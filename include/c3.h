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

#ifndef MOSAICSC_C3_H
#define MOSAICSC_C3_H

#include "utils/common/misc.h"
#include "base_component.h"

namespace MosaicSC {

template <>
struct C<3> : public BaseC {

    static constexpr szt type {3};

    static constexpr std::array<Occupancy,2> occ {{
        {Ornt::no, { 1, 0}},
        {Ornt::no, {-1, 0}}
    }};

    static constexpr std::array<Interactor,8> phb {{
        {Ornt::no, Ornt::up, 1, {-2, -1}, nullptr, "03 01+ "},
        {Ornt::no, Ornt::up, 2, {-2,  1}, nullptr, "03 02+ "},
        {Ornt::no, Ornt::up, 4, {-1,  0}, nullptr, "03 04+ "},
        {Ornt::no, Ornt::no, 3, { 0, -1}, nullptr, "03 03+ "},
        {Ornt::no, Ornt::no, 3, { 0,  1}, nullptr, "03 03- "},
        {Ornt::no, Ornt::dw, 4, { 1,  0}, nullptr, "03 04- "},
        {Ornt::no, Ornt::dw, 2, { 2, -1}, nullptr, "03 02+ "},
        {Ornt::no, Ornt::dw, 1, { 2,  1}, nullptr, "03 01- "}
    }};

    static constexpr std::array<Interactor,10> itr {{
        {Ornt::no, Ornt::up, 1, {-2,  0}, &k_1_3a, "01 03+a"},
        {Ornt::no, Ornt::up, 1, {-2, -2}, &k_1_3b, "01 03+b"},
        {Ornt::no, Ornt::up, 2, {-2,  0}, &k_2_3,  "02 03+ "},
        {Ornt::no, Ornt::up, 4, {-1, -1}, &k_3_4a, "03 04+a"},
        {Ornt::no, Ornt::up, 4, {-1,  1}, &k_3_4b, "03 04+b"},
        {Ornt::no, Ornt::dw, 4, { 1, -1}, &k_3_4b, "03 04-b"},
        {Ornt::no, Ornt::dw, 4, { 1,  1}, &k_3_4a, "03 04-a"},
        {Ornt::no, Ornt::dw, 2, { 2,  0}, &k_2_3,  "02 03- "},
        {Ornt::no, Ornt::dw, 1, { 2,  2}, &k_1_3b, "01 03-b"},
        {Ornt::no, Ornt::dw, 1, { 2,  0}, &k_1_3a, "01 03-a"}
    }};

    std::array<int, itr.size()> conn;

    explicit C(
        szt ind,
        Ornt::T di,
        const A2<szt>& pos
    ) noexcept;

    static szt initialize(
        szt,
        vec2szt&,
        vec2ort&
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

    void write(std::ofstream&) const final;

};

}   // namespace MosaicSC

#endif // MOSAICSC_C3_H
