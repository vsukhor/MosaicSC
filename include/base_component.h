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

#ifndef MOSAICSC_BASEC_H
#define MOSAICSC_BASEC_H

#include <fstream>

#include "utils/common/misc.h"

#include "definitions.h"
#include "parameters.h"

namespace MosaicSC {

struct Occupancy {

    const Ornt::T so;      // orientation of the 1st component
    const long    sh[2];   // shift
    const long    rv[2] {-sh[0], -sh[1]};

    constexpr auto
    get_sh( const bool rev ) const noexcept
    {
        return (rev) ? rv : sh;
    }

};

struct Interactor {

    const Ornt::T so;  ///< Orientation of the 1st component.
    const Ornt::T di;  ///< Orientation of the 2nd component.

    const szt t;  ///< Type of the 2nd component.

    const long   sh[2];   ///< Shift.
    const real*  k;       ///< Rate.
    const char   name[8];
    const long   rv[2] {-sh[0], -sh[1]};

    constexpr auto
    get_sh( const bool rev ) const noexcept
    {
        return (rev) ? rv : sh;
    }

};

struct BaseC {

    typedef real (*ppmf)(const real);

    static constexpr uint NT {5};   // number of complex types
    static Parameters const* sps;
    static ppmf ph;

    const szt ind;
    Ornt::T   di;    // ornt
    A2<szt>   pos;   // i,j on the grid

    static real k_1_1;
    static real k_1_3a;
    static real k_1_3b;
    static real k_1_4a;
    static real k_1_4b;
    static real k_2_3;
    static real k_2_4;
    static real k_3_4a;
    static real k_3_4b;
    static real k_4_4;
    static real syn;

    explicit BaseC(
        szt,
        Ornt::T,
        const A2<szt>&
    ) noexcept;

    virtual ~BaseC() = default;
    
    static void set_statics(Parameters const*) noexcept;

    static bool is_occupied(
        szt,
        Ornt::T,
        szt,
        szt,
        const long[2],
        const Utils::Common::vec2<szt>&,
        const Utils::Common::vec2<Ornt::T>&,
        const szt[]
    ) noexcept;

    static real fun_hs(const real h) noexcept {
        return -std::pow(h, syn);
    };

    static real fun_h(const real h) noexcept {
        return -h;
    };
    
    static A2<szt> position(
        szt,
        szt,
        const long[2],
        const szt[2]
    ) noexcept;

    virtual void set_conn(
        const Utils::Common::vec2<szt>& tp,
        const szt L[]
    ) noexcept = 0;
                
    virtual int get_conn(szt h) noexcept = 0;

    virtual void write(std::ofstream&) const = 0;
};

}  // namespace MosaicSC

#endif // MOSAICSC_BASEC_H
