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

#ifndef MOSAICSC_IO_H
#define MOSAICSC_IO_H

#include <iostream>
#include <fstream>
#include <mutex>

#include "utils/common/misc.h"
#include "utils/common/msgr.h"

#include "definitions.h"
#include "parameters.h"
#include "base_component.h"
//#include "c0.h"
#include "c1.h"
#include "c2.h"
#include "c3.h"
#include "c4.h"
#include "sc.h"

namespace MosaicSC {

using namespace Utils::Common;

class Potts;

class IO {

    friend class Potts;

    IO(Potts* host) noexcept;        // The only constructor

    static constexpr szt screenWidth {70};
    const Parameters&    sps;
    const std::string&   runname;

    Potts*                     host;
    Msgr&                      msgr;
    std::mutex&                mtx;
    const szt                 (&L)[2];    // grid dimensions: nrows, ncols
    const std::vector<SC<BaseC>>& scs;
    const vec2<szt>&           mskSC;
    vec2<szt>&                 tp;        // grid node complex types
    vec2<Ornt::T>&             di;        // grid node orientations
    const std::vector<real>&   cE;        // complex energy values
    const vec2<real>&          gE;        // grid energy valuse

    void print_lattice(const szt, const szt,
                       const szt, const szt) const noexcept;
    void print_lattice(const szt, const szt, const szt,
                       const szt, const szt, const szt) const noexcept;
    void print_orient() const noexcept;
    void print_orient(const szt, const szt) const noexcept;
    void print_gE_color(const szt, const szt, const szt,
                        const szt) const noexcept;
    void print_gE_bw(const szt, const szt, const szt,
                     const szt) const noexcept;
    void print_mskSC() const noexcept;
    void print_mskSC(const szt, const szt) const noexcept;

    void logline( std::ostream&, const szt,
                  const szt, const szt, const szt, const szt,
                  const szt, const Ornt::T, const szt, const Ornt::T,
                  const szt, const Ornt::T, const szt, const Ornt::T,
                  const real, const real, const real,
                  const real, const real ) const noexcept;

    void output( const bool, const szt,
                 const szt, const szt, const szt,
                 const szt, const szt, const Ornt::T,
                 const szt, const Ornt::T, const szt,
                 const Ornt::T, const szt, const Ornt::T,
                 const real, const real, const real,
                 const real, const real) const noexcept;

    int write(         const bool, const bool, const szt ) const;
    int write_lattice( const bool, const bool, const szt ) const;

    szt readin_lattice();

};

}   // namespace MosaicSC

#endif // MOSAICSC_IO_H
