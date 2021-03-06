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

#ifndef MOSAICSC_C2_H
#define MOSAICSC_C2_H

#include "utils/common/misc.h"

#include "base_component.h"

namespace mosaicsc {

template <>
struct C<2> : public BaseC {

    static constexpr szt type {2};

    static constexpr std::array<Interactor,4> phb {{
        {Ornt::up, Ornt::up, 1, {0, -2}, nullptr, "02 01+a"},
        {Ornt::up, Ornt::up, 1, {0, -1}, nullptr, "02 01+b"},
        {Ornt::up, Ornt::no, 3, {2, -1}, nullptr, "02 03  "},
        {Ornt::up, Ornt::up, 4, {1,  0}, nullptr, "02 04  "}
    }};

    static constexpr std::array<Interactor,2> itr {{
        {Ornt::up, Ornt::no, 3, {2,  0}, &k_2_3, "02 03  "},
        {Ornt::up, Ornt::up, 4, {1, -1}, &k_2_4, "02 04  "}
    }};

    std::array<int, itr.size()> conn;

    explicit C(
        szt ind,
        Ornt::T di,
        const A2<szt>& pos
    ) noexcept;

    static A2<szt> initialize(
        const A2<szt>&,
        vec2szt&,
        vec2ort&,
        szt
    ) noexcept;

    static real hamming_dist(
        szt,
        szt,
        Ornt::T,
        const vec2szt&,
        const vec2ort&,
        const szt[]
    ) noexcept;

    void set_conn(
        const vec2szt& tp,
        const szt L[]
    ) noexcept final;

    int get_conn(szt h) noexcept final;

    static bool node_is_occupied(
        szt,
        szt,
        const vec2szt&,
        const vec2ort&,
        const szt[]
    ) noexcept;

    void write(std::ofstream &) const final;

};

}   // namespace mosaicsc

#endif // MOSAICSC_C2_H
