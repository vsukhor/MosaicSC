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

#ifndef MOSAICSC_PARAMETERS_H
#define MOSAICSC_PARAMETERS_H

#include "mosaicsc/definitions.h"

#include <filesystem>
#include <iostream>
#include <sstream>
#include <string>
#include <string_view>
#include <vector>


namespace mosaicsc {

struct Parameters {

    using path = std::filesystem::path;

    static constexpr ulong numBasicTypes {4};

    path workingDir_in;
    path workingDir_out;

    // Multimple statistically independent trajectories
    szt runFirst;  ///< Index of the first run
    szt runLast;   ///< Index of the last run

    szt nthreads;  ///< Number of threads to use
    int resume;
    szt nsteps;
    szt logfreq;
    szt detailedfreq;
    szt finaldetailed;
    szt savefreq;

    std::vector<ulong> nparticles;
    real               dilution;
    uint               inum;
    std::vector<real>  rates_f;
    real               syn;
    real               beta;

    explicit Parameters(const path& file);

    std::string_view check() const noexcept;
    void print() const;

private:

    void load_config(const path& file);

    template <typename K>
    void initialize_arrayparam(
        szt,
        std::string,
        const std::string&,
        std::vector<K>&
    );

    /// If the line contains a valid parname-value combination,
    /// returns 'true' and the combination, otherwise retruns 'false'.
    bool preprocess_line(
        std::ifstream&,
        std::string&,
        std::string&
    );
};

}  // namespace mosaicsc

#endif  // MOSAICSC_PARAMETERS_H
