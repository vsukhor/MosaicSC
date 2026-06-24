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

#ifndef MOSAICSC_BASE_COMPONENT_H
#define MOSAICSC_BASE_COMPONENT_H

#include "mosaicsc/definitions.h"
#include "mosaicsc/parameters.h"

#include "utils/misc.h"

#include <fstream>

namespace mosaicsc {

struct alignas(64)
Occupancy {

    const Ornt::value_t so; ///< Orientation of the 1st component

    const long sh[2];                   ///< Offset
    const long rv[2] {-sh[0], -sh[1]};  ///< Offset in reversed direction

    constexpr auto
    get_sh(const bool rev) const noexcept
    {
        return (rev) ? rv : sh;
    }

};

struct alignas(64)
Interactor {

    const Ornt::value_t so;  ///< Orientation of the 1st component.
    const Ornt::value_t di;  ///< Orientation of the 2nd component.

    const szt t;  ///< Type of the 2nd component.

    const long   sh[2];   ///< Offset.
    const real*  k;       ///< Rate.
    const char   name[8];
    const long   rv[2] {-sh[0], -sh[1]};

    constexpr auto
    get_sh( const bool rev ) const noexcept
    {
        return (rev) ? rv : sh;
    }
};

struct alignas(64)
BaseC {

    using ppmf = real (*)(const real);

    static constexpr uint NT {5};   ///< Number of original species
    static inline Parameters const* sps;
    static ppmf ph;

    const szt     ind;
    Ornt::value_t di;    ///< Orientation
    A2<szt>       pos;   ///< Grid coordinates i,j

    static inline real k_1_1;
    static inline real k_1_3a;
    static inline real k_1_3b;
    static inline real k_1_4a;
    static inline real k_1_4b;
    static inline real k_2_3;
    static inline real k_2_4;
    static inline real k_3_4a;
    static inline real k_3_4b;
    static inline real k_4_4;
    static inline real syn;

    explicit constexpr BaseC(
        szt ind,
        Ornt::value_t di,
        const A2<szt>& pos
    ) noexcept;

    virtual ~BaseC() = default;

    static void set_statics(Parameters const* /*sps_*/) noexcept;

    static constexpr bool is_occupied(
        szt t,
        Ornt::value_t ornt,
        szt i,
        szt j,
        const long sh[2],
        const vec2szt& tp,
        const vec2ort& di,
        const szt L[]
    ) noexcept;

    static real fun_hs(const real h) noexcept { return -std::pow(h, syn); };

    static real constexpr fun_h(const real h) noexcept { return -h; };

    static constexpr A2<szt> position(
        szt i,
        szt j,
        const long sh[2],
        const szt L[2]
    ) noexcept;

    virtual void set_conn(
        const utils::vec2<szt>& tp,
        const szt L[]
    ) noexcept = 0;

    virtual int get_conn(szt h) noexcept = 0;

    virtual void write(std::ofstream&) const = 0;
};


// IMPLEMENTATION ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

inline typename BaseC::ppmf BaseC::ph;

constexpr
BaseC::
BaseC( const szt ind,
       const Ornt::value_t di,
       const A2<std::size_t>& pos ) noexcept
    : ind {ind}
    , di {di}
    , pos {pos}
{}

inline
void BaseC::
set_statics( Parameters const *sps_ ) noexcept
{
    sps = sps_;

    k_1_3a = sps->rates_f[0];
    k_1_3b = sps->rates_f[1];
    k_1_4a = sps->rates_f[2];
    k_1_4b = sps->rates_f[3];
    k_2_3 =  sps->rates_f[4];
    k_2_4 =  sps->rates_f[5];
    k_3_4a = sps->rates_f[6];
    k_3_4b = sps->rates_f[7];
    k_4_4 =  sps->rates_f[8];

    syn = sps->syn;
    ph = (syn != 1)
       ? fun_hs
       : fun_h;
}

constexpr
bool BaseC::
is_occupied(const szt t,
            const Ornt::value_t ornt,
            const szt i,
            const szt j,
            const long sh[2],
            const vec2szt& tp,
            const vec2ort& di,
            const szt L[] ) noexcept  // static
{
    const A2<std::size_t> p {position(i, j, sh, L)};
    return tp[p[0]][p[1]] == t &&
           di[p[0]][p[1]] == ornt;
}

constexpr
A2<std::size_t> BaseC::
position( const szt i,
          const szt j,
          const long sh[2],
          const szt L[2] ) noexcept  // static
{
    using P2 = A2<std::size_t>;

    auto not_found = [&]([[maybe_unused]] const long shi,
                         [[maybe_unused]] const long shj)
    {
        ASSERT(false, "shift not found for shi ", shi, ", shj ", shj);
        return P2 {};  // pro forma
    };

    const auto shi = sh[0];
    const auto shj = sh[1];
    if (shi == -3) {
        if (shj == -1) return i >  2 ? j != 0 ? P2{ i-3,    j-1    } :
                                                P2{ i-3,    L[1]-1 } :
                              i == 2 ? j != 0 ? P2{ L[0]-1, j-1    } :
                                                P2{ L[0]-1, L[1]-1 } :
                              i == 1 ? j != 0 ? P2{ L[0]-2, j-1    } :
                                                P2{ L[0]-2, L[1]-1 } :
                                       j != 0 ? P2{ L[0]-3, j-1    } :
                                                P2{ L[0]-3, L[1]-1 };
        return not_found(shi, shj);
    }
    if (shi == -2) {
        if (shj == -2) return i >  1 ? j >  1 ? P2{ i-2,    j-2    } :
                                       j == 1 ? P2{ i-2,    L[1]-1 } :
                                                P2{ i-2,    L[1]-2 } :
                              i == 1 ? j >  1 ? P2{ L[0]-1, j-2    } :
                                       j == 1 ? P2{ L[0]-1, L[1]-1 } :
                                                P2{ L[0]-1, L[1]-2 } :
                                       j >  1 ? P2{ L[0]-2, j-2    } :
                                       j == 1 ? P2{ L[0]-2, L[1]-1 } :
                                                P2{ L[0]-2, L[1]-2 };
        if (shj == -1) return i >  1 ? j != 0 ? P2{ i-2,    j-1    } :
                                                P2{ i-2,    L[1]-1 } :
                              i == 1 ? j != 0 ? P2{ L[0]-1, j-1    } :
                                                P2{ L[0]-1, L[1]-1 } :
                                       j != 0 ? P2{ L[0]-2, j-1    } :
                                                P2{ L[0]-2, L[1]-1 };
        if (shj ==  0) return i >  1 ? P2{ i-2,    j } :
                              i == 1 ? P2{ L[0]-1, j } :
                                       P2{ L[0]-2, j };
        if (shj ==  1) return i >  1 ? j != L[1]-1 ? P2{ i-2,    j+1 } :
                                                     P2{ i-2,    0   } :
                              i == 1 ? j != L[1]-1 ? P2{ L[0]-1, j-1 } :
                                                     P2{ L[0]-1, 0   } :
                                       j != L[1]-1 ? P2{ L[0]-2, j-1 } :
                                                     P2{ L[0]-2, 0   };
        return not_found(shi, shj);
    }
    if (shi == -1) {
        if (shj == -2) return i != 0 ? j >  1 ? P2{ i-1,    j-2    } :
                                       j == 1 ? P2{ i-1,    L[1]-1 } :
                                                P2{ i-1,    L[1]-2 } :
                                       j >  1 ? P2{ L[0]-1, j-2    } :
                                       j == 1 ? P2{ L[0]-1, L[1]-1 } :
                                                P2{ L[0]-1, L[1]-2 };
        if (shj == -1) return j != 0 ? i != 0 ? P2{ i-1,    j-1    } :
                                                P2{ L[0]-1, j-1    } :
                                       i != 0 ? P2{ i-1,    L[1]-1 } :
                                                P2{ L[0]-1, L[1]-1 };
        if (shj ==  0) return i != 0 ? P2{ i-1,    j } :
                                       P2{ L[0]-1, j };
        if (shj ==  1) return j != L[1]-1 ? i != 0 ? P2{ i-1,    j+1 } :
                                                     P2{ L[0]-1, j+1 } :
                                            i != 0 ? P2{ i-1,    0   } :
                                                     P2{ L[0]-1, 0   };
        if (shj ==  2) return i != 0 ? j <  L[1]-2 ? P2{ i-1,    j+2 } :
                                       j == L[1]-2 ? P2{ i-1,    0   } :
                                                     P2{ i-1,    1   } :
                                       j <  L[1]-2 ? P2{ L[0]-1, j+2 } :
                                       j == L[1]-2 ? P2{ L[0]-1, 0   } :
                                                     P2{ L[0]-1, 1   };
        return not_found(shi, shj);
    }
    if (shi ==  0) {
        if (shj == -2) return j >  1 ? P2{ i, j-2    } :
                              j == 1 ? P2{ i, L[1]-1 } :
                                       P2{ i, L[1]-2 };
        if (shj == -1) return j != 0 ? P2{ i, j-1    } :
                                       P2{ i, L[1]-1 };
        if (shj ==  0) return P2{ i, j };
        if (shj ==  1) return j != L[1]-1 ? P2{ i, j+1 } :
                                            P2{ i, 0   };
        if (shj ==  2) return j <  L[1]-2 ? P2{ i, j+2 } :
                              j == L[1]-2 ? P2{ i, 0   } :
                                            P2{ i, 1   };
        return not_found(shi, shj);
    }
    if (shi == 1) {
        if (shj == -2) return i <  L[0]-1 ? j >  1 ? P2{ i+1,  j-2    } :
                                            j == 1 ? P2{ i+1,  L[1]-1 } :
                                                     P2{ i+1,  L[1]-2 } :
                                            j >  1 ? P2{ 0,    j-2    } :
                                            j == 1 ? P2{ 0,    L[1]-1 } :
                                                     P2{ 0,    L[1]-2 };
        if (shj == -1) return j != 0 ? i != L[0]-1 ? P2{ i+1, j-1    } :
                                                     P2{ 0,   j-1    } :
                                       i != L[0]-1 ? P2{ i+1, L[1]-1 } :
                                                     P2{ 0,   L[1]-1 };
        if (shj ==  0) return i != L[0]-1 ? P2{ i+1, j } :
                                            P2{ 0,   j };
        if (shj ==  1) return j != L[1]-1 ? i != L[0]-1 ? P2{ i+1, j+1 } :
                                                          P2{ 0,   j+1 } :
                                            i != L[0]-1 ? P2{ i+1, 0   } :
                                                          P2{ 0,   0   };
        if (shj ==  2) return i <  L[0]-1 ? j  < L[1]-2 ? P2{ i+1, j+2 } :
                                            j == L[1]-2 ? P2{ i+1, 0   } :
                                                          P2{ i+1, 1   } :
                                            j  < L[1]-2 ? P2{ 0,   j+2 } :
                                            j == L[1]-2 ? P2{ 0,   0   } :
                                                          P2{ 0,   1   };
        return not_found (shi, shj);
    }
    if (shi == 2) {
        if (shj == -1) return i <  L[0]-2 ? j != 0 ? P2{ i+2, j-1    } :
                                                     P2{ i+2, L[1]-1 } :
                              i == L[0]-2 ? j != 0 ? P2{ 0,   j-1    } :
                                                     P2{ 0,   L[1]-1 } :
                                            j != 0 ? P2{ 1,   j-1    } :
                                                     P2{ 1,   L[1]-1 };
        if (shj ==  0) return i <  L[0]-2 ? P2{ i+2, j } :
                              i == L[0]-2 ? P2{ 0,   j } :
                                            P2{ 1,   j };
        if (shj ==  1) return i <  L[0]-2 ? j  < L[1]-1 ? P2{ i+2, j+1 } :
                                                          P2{ i+2, 0   } :
                              i == L[0]-2 ? j  < L[1]-1 ? P2{ 0,   j+1 } :
                                                          P2{ 0,   0   } :
                                            j  < L[1]-1 ? P2{ 1,   j+1 } :
                                                          P2{ 1,   0   };
        if (shj ==  2) return i <  L[0]-2 ? j  < L[1]-2 ? P2{ i+2, j+2 } :
                                            j == L[1]-2 ? P2{ i+2, 0   } :
                                                          P2{ i+2, 1   } :
                              i == L[0]-2 ? j  < L[1]-2 ? P2{ 0,   j+2 } :
                                            j == L[1]-2 ? P2{ 0,   0   } :
                                                          P2{ 0,   1   } :
                                            j  < L[1]-2 ? P2{ 1,   j+2 } :
                                            j == L[1]-2 ? P2{ 1,   0   } :
                                                          P2{ 1,   1   };
        return not_found(shi, shj);
    }
    if (shi ==  3) {
        if (shj ==  1) return i <  L[0]-3 ? j  < L[1]-1 ? P2{ i+3, j+1 } :
                                                          P2{ i+3, 0   } :
                              i == L[0]-3 ? j  < L[1]-1 ? P2{ 0,   j+1 } :
                                                          P2{ 0,   0   } :
                              i == L[0]-2 ? j  < L[1]-1 ? P2{ 1,   j+1 } :
                                                          P2{ 1,   0   } :
                                             j < L[1]-1 ? P2{ 2,   j+1 } :
                                                          P2{ 2,   0   };
        return not_found(shi, shj);
    }
    return not_found(shi, shj);
}


}  // namespace mosaicsc

#endif  // MOSAICSC_BASE_COMPONENT_H
