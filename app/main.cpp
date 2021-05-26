/* =============================================================================

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

================================================================================
*/

#include <iostream>
#include <mutex>
#include <string>

#include "definitions.h"
#include "parameters.h"
#include "base_component.h"
#include "potts.h"

void runThread( Utils::Common::szt,
                Utils::Common::szt,
                Utils::Common::szt,
                std::mutex&,
                const std::string&,
                const MosaicSC::Parameters& );

int main( int argc, const char* argv[] ) 
{
    if (argc < 2)
        return Utils::Common::Exceptions::simple(
                "Error: The path to config file is missing.", nullptr);

    auto workingDir = std::string(argv[1]) + Utils::Common::SLASH;

    auto configFname = workingDir + "config.txt";
    if (!Utils::Common::file_exists(configFname))
        return Utils::Common::Exceptions::simple(
        "Config file not accessible in with path " + configFname, nullptr);

    MosaicSC::Parameters sps {configFname};

    sps.workingDir_in = workingDir;
    if (!Utils::Common::directory_exists(sps.workingDir_in))
        return Utils::Common::Exceptions::simple(
                    "No directory for input files is available", nullptr);

    sps.workingDir_out = workingDir;
    if (!Utils::Common::directory_exists(sps.workingDir_out))
        return Utils::Common::Exceptions::simple(
                    "No directory for output files is available", nullptr);

    auto seedfilename = workingDir+"seeds";
    if (!Utils::Common::file_exists(seedfilename))
        MosaicSC::RandFactory::make_seed(seedfilename, nullptr);

    MosaicSC::BaseC::set_statics(&sps);

    std::mutex mtx;

    const auto ntasks = sps.RUN_end - (sps.RUN_ini - 1);

    if ((MOSAICSC_CUDA && ntasks > 1))
        return Utils::Common::Exceptions::simple(
            std::string("Using CUDA is only compatible with ") +
            "single-threaded execution.\nPlease set nthreads = 1", nullptr);

    Utils::Common::Threads th {sps.RUN_ini,
                               ntasks,
                               0,
                               Utils::Common::Threads::Weights::Equal,
                               sps.nthreads};

    for (Utils::Common::szt ith=0; ith<th.thr.size(); ith++)
        th.thr[ith] = std::thread( runThread, th.i1[ith],
                                              th.i2[ith],
                                              ith,
                                              std::ref(mtx),
                                              std::cref(seedfilename),
                                              std::cref(sps) );
    th.join();

    return EXIT_SUCCESS;
}

void runThread( const Utils::Common::szt ii1,
                const Utils::Common::szt ii2,
                const Utils::Common::szt ith,
                std::mutex& mtx,
                const std::string& seedfilename,
                const MosaicSC::Parameters& sps )
{
    for (auto ii=ii1; ii<ii2; ii++) {

        mtx.lock();

            const auto runname = std::to_string(ii);
            const auto logfname = sps.workingDir_out + "log_" + runname + ".txt";
            std::ofstream logfile;
            try {
                if (sps.resume) logfile.open(logfname, std::ios::app);
                else            logfile.open(logfname, std::ios::trunc);
            } catch (const std::ifstream::failure&) {
                Utils::Common::Exceptions::simple(
                    "Cannot open file: " + logfname, nullptr);
            }
            std::cout.precision(6);
            std::cout.setf(std::ios::scientific);
            logfile.precision(6);
            logfile.setf(std::ios::scientific);

            constexpr const int PRINT_PRECISION = 6;
            Utils::Common::Msgr msgr {&std::cout, &logfile, PRINT_PRECISION};
            sps.print(msgr);
            
            Utils::Common::StopWatch stopwatch;
            stopwatch.start();

            char hostname[1024];
            gethostname(hostname, 1024);
            msgr.print("Run " + runname +
                       " started: " + stopwatch.start.str +
                       " on " + std::string(hostname));

            auto R = std::make_unique<MosaicSC::RandFactory>(
                                                    seedfilename, ii, msgr);

        mtx.unlock();

        MosaicSC::Potts sim {sps, mtx, runname, ith, R, msgr};
        sim.run();

        mtx.lock();

            logfile << std::endl;
            std::cout << std::endl;
            stopwatch.stop();
            const std::string message {"Run " + runname +
                                       " finished: " + stopwatch.stop.str  +
                                       "on " + std::string(hostname)};
            msgr.print(message);
            msgr.print("Wall time used; " + stopwatch.duration() + " sec");
            logfile << std::endl;
            std::cout << std::endl;

        mtx.unlock();
    }
}
