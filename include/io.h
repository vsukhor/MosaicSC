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

#include <filesystem>
#include <fstream>
#include <iostream>
#include <mutex>

#include "utils/common/misc.h"
#include "utils/msgr.h"

#include "definitions.h"
#include "parameters.h"
#include "base_component.h"
#include "c1.h"
#include "c2.h"
#include "c3.h"
#include "c4.h"
#include "sc.h"

namespace mosaicsc {

struct Potts;

class IO {

    friend Potts;

    IO(Potts* host) noexcept;  // The only constructor

    static constexpr szt screenWidth {70};
    const Parameters&    sps;
    const std::string&   runname;

    Potts*                    host;
    utils::Msgr&              msgr;
    std::mutex&               mtx;
    const szt                (&L)[2];    // grid dimensions: nrows, ncols
    const std::vector<SC<BaseC>>& scs;
    const vec2szt&           mskSC;
    vec2szt&                 tp;        // grid node complex types
    vec2ort&                 di;        // grid node orientations
    const std::vector<real>& cE;        // complex energy values
    const vec2real&          gE;        // grid energy valuse

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
                 szt, Ornt::T, szt, Ornt::T,
                 szt, Ornt::T, szt, Ornt::T,
                 real, real, real,
                 real, real) const noexcept;

    void output(bool, szt,
                szt, szt, szt,
                szt, szt, Ornt::T,
                szt, Ornt::T, szt,
                Ornt::T, szt, Ornt::T,
                real, real, real,
                real, real) const noexcept;

    int write(        bool, bool, szt) const;
    int write_lattice(bool, bool, szt) const;

    szt readin_lattice();

};

}  // namespace mosaicsc

#endif // MOSAICSC_IO_H
