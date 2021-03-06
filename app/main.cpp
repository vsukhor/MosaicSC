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

#include <filesystem>
#include <functional>
#include <iostream>
#include <mutex>
#include <string>
#include <thread>

#include "utils/msgr.h"
#include "utils/stop_watch.h"
#include "utils/threads.h"

#include "definitions.h"
#include "parameters.h"
#include "base_component.h"
#include "potts.h"

void runThread( const size_t i1,
                const size_t i2,
                const size_t ith,
                std::mutex& mtx,
                const mosaicsc::Parameters& sps );

int main( int argc, const char* argv[] ) 
{

    auto exit = [](const std::string& s) {
        std::cerr << s << std::endl;
        std::exit(EXIT_FAILURE);
    };

    if (argc < 2)
        exit("Error: The path to config file is missing.");

    std::filesystem::path workingDir {std::string(argv[1])};

    auto configFile {workingDir / "config.txt"};
    if (!std::filesystem::is_regular_file(configFile))
        exit("Config file not accessible in with path " + configFile.string());

    mosaicsc::Parameters sps {configFile};

    sps.workingDir_in = workingDir;
    if (!std::filesystem::exists(sps.workingDir_in))
        exit("No directory for input files is available");

    sps.workingDir_out = workingDir;
    if (!std::filesystem::exists(sps.workingDir_out))
        exit("No directory for output files is available");

    mosaicsc::BaseC::set_statics(&sps);

    std::mutex mtx;

    const auto ntasks = sps.RUN_end - (sps.RUN_ini - 1);

    if (MOSAICSC_CUDA && ntasks > 1)
        exit(std::string("Using CUDA is only compatible with ") +
             "single-threaded execution.\nPlease set nthreads = 1");

    utils::threads::Threads<utils::threads::Weights::Equal> th {
        sps.RUN_ini,
        ntasks,
        0,
        sps.nthreads
    };

    for (size_t ith=0; ith<th.thr.size(); ith++)
        th.thr[ith] = std::thread( runThread, th.i1[ith],
                                              th.i2[ith],
                                              ith,
                                              std::ref(mtx),
                                              std::cref(sps) );
    th.join();

    return EXIT_SUCCESS;
}

void runThread( const size_t i1,
                const size_t i2,
                const size_t ith,
                std::mutex& mtx,
                const mosaicsc::Parameters& sps )
{
    for (auto i=i1; i<i2; i++) {

        mtx.lock();

            const auto runname = std::to_string(i);
            const auto logf = sps.workingDir_out /
                (std::string("log_") + runname + ".txt");
            std::ofstream log;
            try {
                if (sps.resume) log.open(logf, std::ios::app);
                else            log.open(logf, std::ios::trunc);
            } catch (const std::ifstream::failure&) {
                std::cerr << "Cannot open file: " << logf << std::endl;
                std::exit(EXIT_FAILURE);
            }
            constexpr int print_accuracy {6};
            utils::Msgr msgr {&std::cout, &log, print_accuracy};
            sps.print(msgr);
            
            utils::StopWatch stopwatch;
            stopwatch.start();

            constexpr int buffersize {1024};
            char hostname[buffersize];
            gethostname(hostname, buffersize);
            msgr.print("Run ", runname, " started: ", stopwatch.start.str,
                       " on ", hostname);

            auto R = std::make_unique<mosaicsc::RandFactory>(i, msgr);

        mtx.unlock();

        mosaicsc::Potts sim {sps, mtx, runname, ith, R, msgr};
        sim.run();

        mtx.lock();

            log << std::endl;
            std::cout << std::endl;
            stopwatch.stop();
            msgr.print("Run ", runname, " finished: ", stopwatch.stop.str,
                       "on ", hostname);
            msgr.print("Wall time used; ", stopwatch.duration(), " sec");
            log << std::endl;
            std::cout << std::endl;

        mtx.unlock();
    }
}
