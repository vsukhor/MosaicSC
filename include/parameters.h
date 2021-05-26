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

#include <iostream>
#include <string>
#include <vector>
#include <sstream>

#include "definitions.h"

namespace MosaicSC {

struct Parameters {

    std::string workingDir_in,
                workingDir_out;

    szt RUN_ini;
    szt RUN_end;
    szt nthreads;
    int resume;
    szt Niter;
    szt logfreq;
    szt detailedfreq;
    szt finaldetailed;
    szt savefreq;

    static constexpr ulong numBasicTypes {4};
    std::vector<ulong>  Ntot;
    real                dilution;
    uint                inum;
    std::vector<real>   rates_f;
    real                syn;
    real                beta;

    Parameters(const std::string&);

    void print(Utils::Common::Msgr&) const;

private:

    void load_config(const std::string&);

    template <typename K>
    void initialize_arrayparam(
        const szt,
        std::string,
        const std::string&,
        std::vector<K>&
    );

    // If the line contains a valid parname-value combination,
    // returns true and combination, otherwise retruns false.
    bool preprocess_line(
        std::ifstream&,
        std::string&,
        std::string&
    );

};

}  // namespace MosaicSC

#endif // MOSAICSC_PARAMETERS_H
