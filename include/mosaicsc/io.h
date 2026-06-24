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

#ifndef MOSAICSC_IO_H
#define MOSAICSC_IO_H

#include "mosaicsc/definitions.h"
#include "mosaicsc/parameters.h"
#include "mosaicsc/base_component.h"
#include "mosaicsc/c1.h"
#include "mosaicsc/c2.h"
#include "mosaicsc/c3.h"
#include "mosaicsc/c4.h"
#include "mosaicsc/sc.h"

#include "utils/misc.h"
#include "utils/msgr.h"

#include <fstream>
#include <mutex>
#include <string>
#include <vector>

namespace mosaicsc {

struct Potts;

class IO {

    friend Potts;

    IO(Potts* host) noexcept;  ///< The only constructor

    static constexpr szt screenWidth {70};
    const Parameters&    sps;
    const std::string&   runname;

    Potts*                    host;
    std::mutex&               mtx;
    const szt                (&L)[2];   ///< Grid dimensions: nrows, ncols
    const std::vector<SC<BaseC>>& scs;
    const vec2szt&           mskSC;
    vec2szt&                 tp;        ///< Grid node complex types
    vec2ort&                 di;        ///< Grid node orientations
    const std::vector<real>& cE;        ///< Complex energy values
    const vec2real&          gE;        ///< Grid energy values

    void print_lattice(szt, szt, szt, szt) const noexcept;
    void print_lattice(szt, szt, szt,
                       szt, szt, szt) const noexcept;
    void print_orient() const noexcept;
    void print_orient(szt, szt) const noexcept;
    void print_gE_color(szt, szt, szt, szt) const noexcept;
    void print_gE_bw(szt, szt, szt, szt) const noexcept;
    void print_mskSC() const noexcept;
    void print_mskSC(szt, szt) const noexcept;

    void logline(std::ostream&, szt,
                 szt, szt, szt, szt,
                 szt, Ornt::value_t, szt, Ornt::value_t,
                 szt, Ornt::value_t, szt, Ornt::value_t,
                 real, real, real,
                 real, real) const noexcept;

    void output(bool, szt,
                szt, szt, szt,
                szt, szt, Ornt::value_t,
                szt, Ornt::value_t, szt,
                Ornt::value_t, szt, Ornt::value_t,
                real, real, real,
                real, real) const noexcept;

    int write(        bool, bool, szt) const;
    int write_lattice(bool, bool, szt) const;

    szt read_lattice();
};

}  // namespace mosaicsc

#endif // MOSAICSC_IO_H
