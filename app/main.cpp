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

#include "mosaicsc/definitions.h"
#include "mosaicsc/parameters.h"
#include "mosaicsc/base_component.h"
#include "mosaicsc/potts.h"

#include "utils/logger.h"
#include "utils/misc.h"
#include "utils/msgr.h"
#include "utils/stop_watch.h"
#include "utils/threads.h"

#include <filesystem>
#include <functional>
#include <iostream>
#include <mutex>
#include <string_view>
#include <thread>

void run_thread(const size_t i1,
                const size_t i2,
                const size_t ith,
                std::mutex& mtx,
                const mosaicsc::Parameters& sps);

int main(int argc, const char* argv[])
{
    using namespace mosaicsc;

    if (argc < 2)
        utils::exit("Error: Please provide path to config file.");

    std::filesystem::path workingDir {std::string_view(argv[1])};

    const auto configFile {workingDir / "config.txt"};
    if (!std::filesystem::is_regular_file(configFile))
        utils::exit("Config file not accessible in with path " +
                    configFile.string());

    Parameters sps {configFile};

    sps.workingDir_in = workingDir;
    if (!std::filesystem::exists(sps.workingDir_in))
        utils::exit("No directory for input files is available");

    sps.workingDir_out = workingDir;
    if (!std::filesystem::exists(sps.workingDir_out))
        utils::exit("No directory for output files is available");

    if (const auto spsError = sps.check(); spsError.length())
        utils::exit(spsError);

    BaseC::set_statics(&sps);

    std::mutex mtx;

    const auto ntasks = sps.runLast - (sps.runFirst - 1);

    if (useCuda && ntasks > 1)
        utils::exit("Using CUDA is only compatible with "s +
                    "single-threaded execution.\nPlease set nthreads = 1");

    utils::threads::Threads<utils::threads::Weights::Equal> th {
        sps.runFirst,
        ntasks,
        0,
        sps.nthreads
    };

    for (size_t ith=0; ith<th.thr.size(); ith++)
        th.thr[ith] = std::thread(run_thread, th.i1[ith],
                                              th.i2[ith],
                                              ith,
                                              std::ref(mtx),
                                              std::cref(sps) );
    th.join();

    return EXIT_SUCCESS;
}

void run_thread(const size_t i1,
                const size_t i2,
                const size_t ith,
                std::mutex& mtx,
                const mosaicsc::Parameters& sps)
{
    using namespace mosaicsc;

    for (auto i=i1; i<i2; i++) {

        mtx.lock();

            const auto runname = std::to_string(i);
            const auto logf = sps.workingDir_out / ("log_"s + runname + ".txt");
            std::ofstream log;
            try {
                sps.resume ? log.open(logf, std::ios::app)
                           : log.open(logf, std::ios::trunc);
            } catch (const std::ifstream::failure&) {
                utils::exit("Cannot open file: "s + logf.string());
            }
            constexpr int print_accuracy {6};
            msgr = new utils::Msgr{&std::cout, &log, print_accuracy};
            sps.print();

            utils::StopWatch stopwatch;
            stopwatch.start();

            constexpr int buffersize {1024};
            char hostname[buffersize];
            gethostname(hostname, buffersize);
            jot("Run ", runname, " started: ", stopwatch.start.str,
                " on ", hostname);

            auto rnd = std::make_unique<mosaicsc::RandFactory>(i, *msgr);

        mtx.unlock();

        Potts sim {sps, mtx, runname, ith, rnd};
        sim.run();

        mtx.lock();

            log << std::endl;
            std::cout << std::endl;
            stopwatch.stop();
            jot("Run ", runname, " finished: ", stopwatch.stop.str,
                       "on ", hostname);
            jot("Wall time used; ", stopwatch.duration(), " sec");
            log << std::endl;
            std::cout << std::endl;

        mtx.unlock();
    }
}
