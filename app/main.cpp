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

#include "definitions.h"
#include "parameters.h"
#include "base_component.h"
#include "potts.h"

void runThread( utils::common::szt,
                utils::common::szt,
                utils::common::szt,
                std::mutex&,
                const std::string&,
                const mosaicsc::Parameters& );

int main( int argc, const char* argv[] ) 
{
    if (argc < 2)
        return utils::common::exceptions::simple(
                "Error: The path to config file is missing.", nullptr);

    std::filesystem::path workingDir {std::string(argv[1])};

    auto configFile {workingDir / "config.txt"};
    if (!std::filesystem::is_regular_file(configFile))
        return utils::common::exceptions::simple(
        "Config file not accessible in with path " + configFile.string(), nullptr);

    mosaicsc::Parameters sps {configFile};

    sps.workingDir_in = workingDir;
    if (!std::filesystem::exists(sps.workingDir_in))
        return utils::common::exceptions::simple(
                    "No directory for input files is available", nullptr);

    sps.workingDir_out = workingDir;
    if (!std::filesystem::exists(sps.workingDir_out))
        return utils::common::exceptions::simple(
                    "No directory for output files is available", nullptr);

    const auto seeds {workingDir / "seeds"};
    const std::string seedfn {seeds.string()};
    if (!std::filesystem::exists(seeds))
        mosaicsc::RandFactory::make_seed(seeds, nullptr);

    mosaicsc::BaseC::set_statics(&sps);

    std::mutex mtx;

    const auto ntasks = sps.RUN_end - (sps.RUN_ini - 1);

    if (MOSAICSC_CUDA && ntasks > 1)
        return utils::common::exceptions::simple(
            std::string("Using CUDA is only compatible with ") +
            "single-threaded execution.\nPlease set nthreads = 1", nullptr);

    utils::threads::Threads<utils::threads::Weights::Equal> th {
        sps.RUN_ini,
        ntasks,
        0,
        sps.nthreads
    };

    for (utils::common::szt ith=0; ith<th.thr.size(); ith++)
        th.thr[ith] = std::thread( runThread, th.i1[ith],
                                              th.i2[ith],
                                              ith,
                                              std::ref(mtx),
                                              std::cref(seedfn),
                                              std::cref(sps) );
    th.join();

    return EXIT_SUCCESS;
}

void runThread( const utils::common::szt i1,
                const utils::common::szt i2,
                const utils::common::szt ith,
                std::mutex& mtx,
                const std::string& seedfilename,
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
                utils::common::exceptions::simple(
                    "Cannot open file: " + logf.string(), nullptr);
            }
            constexpr int print_accuracy {6};
            utils::common::Msgr msgr {&std::cout, &log, print_accuracy};
            sps.print(msgr);
            
            utils::common::StopWatch stopwatch;
            stopwatch.start();

            constexpr int buffersize {1024};
            char hostname[buffersize];
            gethostname(hostname, buffersize);
            msgr.print("Run ", runname, " started: ", stopwatch.start.str,
                       " on ", hostname);

            auto R = std::make_unique<mosaicsc::RandFactory>(
                    std::filesystem::path{seedfilename}, i, msgr);

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
