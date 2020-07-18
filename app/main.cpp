/* ==============================================================================
   Copyright (C) 2020 Valerii Sukhorukov.
   All Rights Reserved.

   Permission is hereby granted, free of charge, to any person obtaining a copy
   of this software and associated documentation files (the "Software"), to deal
   in the Software without restriction, including without limitation the rights
   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
   copies of the Software, and to permit persons to whom the Software is
   furnished to do so, subject to the following conditions:

   The above copyright notice and this permission notice shall be included in all
   copies or substantial portions of the Software.

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
   SOFTWARE.

============================================================================== */

#include <string>
#include <iostream> 
#include <mutex>

#include "definitions.h"
#include "parameters.h"
#include "base_component.h"
//#include "c0.h"
//#include "c1.h"
//#include "c2.h"
//#include "c3.h"
//#include "c4.h"
//#include "sc.h"
#include "potts.h"

using namespace MosaicSC;

void runThread( const szt,
                const szt,
                const szt,
                std::mutex&,
                const std::string&,
                const Parameters& );

int main( int argc, const char* argv[] ) 
{
    if (argc < 2)
        return Exceptions::simple("Error: The path to config file is missing.");

    auto workingDir = std::string(argv[1]) + SLASH;

    auto configFname = workingDir + "config.txt";
    if (!file_exists(configFname))
        return Exceptions::simple("Config file not accessible in with path " + configFname);

    Parameters sps {configFname};

    sps.workingDir_in = workingDir;
    if (!directory_exists(sps.workingDir_in))
        return Exceptions::simple("No directory for input files is available");

    sps.workingDir_out = workingDir;
    if (!directory_exists(sps.workingDir_out))
        return Exceptions::simple("No directory for output files is available");

    auto seedfilename = workingDir+"seeds";
    if (!file_exists(seedfilename))
        RandFactory::make_seed(seedfilename, nullptr);

    BaseC::set_statics(&sps);

    std::mutex mtx;

    const auto ntasks = sps.RUN_end - (sps.RUN_ini - 1);

    if ((CUDA && ntasks > 1))
        return Exceptions::simple("Using CUDA is only compatible with single-threaded execution.\n Please set nthreads = 1");

    Threads th {sps.RUN_ini,
                ntasks,
                0,
                Threads::Weights::Equal,
                sps.nthreads};

    for (szt ith=0; ith<th.thr.size(); ith++)
        th.thr[ith] = std::thread( runThread, th.i1[ith],
                                              th.i2[ith],
                                              ith,
                                              std::ref(mtx),
                                              std::cref(seedfilename),
                                              std::cref(sps) );
    th.join();

    return EXIT_SUCCESS;
}

void runThread( const szt ii1,
                const szt ii2,
                const szt ith,
                std::mutex& mtx,
                const std::string& seedfilename,
                const Parameters& sps )
{
    for (auto ii=ii1; ii<ii2; ii++) {

        mtx.lock();

            const auto runname = STR(ii);
            const auto logfname = sps.workingDir_out + "log_" + runname + ".txt";
            std::ofstream logfile;
            try {
                if (sps.resume) logfile.open(logfname, std::ios::app);
                else            logfile.open(logfname, std::ios::trunc);
            } catch (const std::ifstream::failure&) {
                Exceptions::simple("Cannot open file: " + logfname);
            }
            std::cout.precision(6);
            std::cout.setf(std::ios::scientific);
            logfile.precision(6);
            logfile.setf(std::ios::scientific);

            Msgr msgr {&std::cout, &logfile};
            sps.print(msgr);
            
            StopWatch stopwatch;
            stopwatch.start();

            char hostname[1024];
            gethostname(hostname, 1024);
            msgr.print("Run " + runname + " started: " + stopwatch.start.str + " on " + std::string(hostname));

            auto R = std::make_unique<RandFactory>(seedfilename, ii, msgr);

        mtx.unlock();

        Potts sim {sps, mtx, runname, ith, R, msgr};
        sim.run();

        mtx.lock();

            logfile << std::endl;
            std::cout << std::endl;
            stopwatch.stop();
            const std::string message {"Run " + runname + " finished: " + stopwatch.stop.str  + "on " + std::string(hostname)};
            msgr.print(message);
            msgr.print("Wall time used; " + stopwatch.duration() + " sec");
            logfile << std::endl;
            std::cout << std::endl;

        mtx.unlock();
    }
}

