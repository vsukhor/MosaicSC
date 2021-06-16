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

#include <fstream>

#include "utils/common/misc.h"

#include "base_component.h"
#include "parameters.h"

namespace mosaicsc {

BaseC::
BaseC( const szt ind,
       const Ornt::T di,
       const A2<szt>& pos ) noexcept
    : ind {ind}
    , di {di}
    , pos {pos}
{}

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
    ph = (syn != utils::one<real>)
       ? fun_hs
       : fun_h;
}

bool BaseC::
is_occupied( const szt t,
            const Ornt::T ornt,
            const szt i,
            const szt j,
            const long sh[2],
            const vec2szt& tp,
            const vec2ort& di,
            const szt L[] ) noexcept
{
    const A2<szt> p {position(i, j, sh, L)};
    return tp[p[0]][p[1]] == t &&
           di[p[0]][p[1]] == ornt;
}

A2<utils::szt> BaseC::
position( const szt i,
          const szt j,
          const long sh[2],
          const szt L[2] ) noexcept
{
    auto asError = [&](const long shi, const long shj) {
        const auto msg = "Error: in position(): shift not found for shi " +
                          std::to_string(shi) + ", shj " + std::to_string(shj);
        XASSERT(false, msg);
        return A2<szt> {};    // pro forma
    };

    const auto shi = sh[0];
    const auto shj = sh[1];
    if (    shi == -3) {
        if (shj == -1) return i >  2 ? j != 0 ? A2<szt>{ i-3,    j-1    } :
                                                A2<szt>{ i-3,    L[1]-1 } :
                              i == 2 ? j != 0 ? A2<szt>{ L[0]-1, j-1    } :
                                                A2<szt>{ L[0]-1, L[1]-1 } :
                              i == 1 ? j != 0 ? A2<szt>{ L[0]-2, j-1    } :
                                                A2<szt>{ L[0]-2, L[1]-1 } :
                                       j != 0 ? A2<szt>{ L[0]-3, j-1    } :
                                                A2<szt>{ L[0]-3, L[1]-1 };
        else return asError(shi, shj);
    }
    else if (shi == -2) {
        if ( shj == -2) return i >  1 ? j >  1 ? A2<szt>{ i-2,    j-2    } :
                                        j == 1 ? A2<szt>{ i-2,    L[1]-1 } :
                                                 A2<szt>{ i-2,    L[1]-2 } :
                               i == 1 ? j >  1 ? A2<szt>{ L[0]-1, j-2    } :
                                        j == 1 ? A2<szt>{ L[0]-1, L[1]-1 } :
                                                 A2<szt>{ L[0]-1, L[1]-2 } :
                                        j >  1 ? A2<szt>{ L[0]-2, j-2    } :
                                        j == 1 ? A2<szt>{ L[0]-2, L[1]-1 } :
                                                 A2<szt>{ L[0]-2, L[1]-2 };
        else if (shj == -1) return i >  1 ? j != 0 ? A2<szt>{ i-2,    j-1    } :
                                                     A2<szt>{ i-2,    L[1]-1 } :
                                   i == 1 ? j != 0 ? A2<szt>{ L[0]-1, j-1    } :
                                                     A2<szt>{ L[0]-1, L[1]-1 } :
                                            j != 0 ? A2<szt>{ L[0]-2, j-1    } :
                                                     A2<szt>{ L[0]-2, L[1]-1 };
        else if (shj ==  0) return i >  1 ? A2<szt>{ i-2,    j } :
                                   i == 1 ? A2<szt>{ L[0]-1, j } :
                                            A2<szt>{ L[0]-2, j };
        else if (shj ==  1) return i >  1 ? j != L[1]-1 ? A2<szt>{ i-2,    j+1 } :
                                                          A2<szt>{ i-2,    0   } :
                                   i == 1 ? j != L[1]-1 ? A2<szt>{ L[0]-1, j-1 } :
                                                          A2<szt>{ L[0]-1, 0   } :
                                            j != L[1]-1 ? A2<szt>{ L[0]-2, j-1 } :
                                                          A2<szt>{ L[0]-2, 0   };
        else return asError(shi, shj);
    }
    else if (shi == -1) {
        if (     shj == -2) return i != 0 ? j >  1 ? A2<szt>{ i-1,    j-2    } :
                                            j == 1 ? A2<szt>{ i-1,    L[1]-1 } :
                                                     A2<szt>{ i-1,    L[1]-2 } :
                                            j >  1 ? A2<szt>{ L[0]-1, j-2    } :
                                            j == 1 ? A2<szt>{ L[0]-1, L[1]-1 } :
                                                     A2<szt>{ L[0]-1, L[1]-2 };
        else if (shj == -1) return j != 0 ? i != 0 ? A2<szt>{ i-1,    j-1    } :
                                                     A2<szt>{ L[0]-1, j-1    } :
                                            i != 0 ? A2<szt>{ i-1,    L[1]-1 } :
                                                     A2<szt>{ L[0]-1, L[1]-1 };
        else if (shj ==  0) return i != 0 ? A2<szt>{ i-1,    j } :
                                            A2<szt>{ L[0]-1, j };
        else if (shj ==  1) return j != L[1]-1 ? i != 0 ? A2<szt>{ i-1,    j+1 } :
                                                          A2<szt>{ L[0]-1, j+1 } :
                                                 i != 0 ? A2<szt>{ i-1,    0   } :
                                                          A2<szt>{ L[0]-1, 0   };
        if(      shj ==  2) return i != 0 ? j <  L[1]-2 ? A2<szt>{ i-1,    j+2 } :
                                            j == L[1]-2 ? A2<szt>{ i-1,    0   } :
                                                          A2<szt>{ i-1,    1   } :
                                            j <  L[1]-2 ? A2<szt>{ L[0]-1, j+2 } :
                                            j == L[1]-2 ? A2<szt>{ L[0]-1, 0   } :
                                                          A2<szt>{ L[0]-1, 1   };
        else return asError(shi, shj);
    }
    else if (shi ==  0) {
        if (     shj == -2) return j >  1 ? A2<szt>{ i, j-2    } :
                                   j == 1 ? A2<szt>{ i, L[1]-1 } :
                                            A2<szt>{ i, L[1]-2 };
        else if (shj == -1) return j != 0 ? A2<szt>{ i, j-1    } :
                                            A2<szt>{ i, L[1]-1 };
        else if (shj ==  0) return A2<szt>{ i, j };
        else if (shj ==  1) return j != L[1]-1 ? A2<szt>{ i, j+1 } :
                                                 A2<szt>{ i, 0   };
        else if (shj ==  2) return j <  L[1]-2 ? A2<szt>{ i, j+2 } :
                                   j == L[1]-2 ? A2<szt>{ i, 0   } :
                                                 A2<szt>{ i, 1   };
        else return asError(shi, shj);
    }
    else if (shi ==  1) {
        if (    shj == -2) return i <  L[0]-1 ? j >  1 ? A2<szt>{ i+1,  j-2    } :
                                                j == 1 ? A2<szt>{ i+1,  L[1]-1 } :
                                                         A2<szt>{ i+1,  L[1]-2 } :
                                                j >  1 ? A2<szt>{ 0,    j-2    } :
                                                j == 1 ? A2<szt>{ 0,    L[1]-1 } :
                                                         A2<szt>{ 0,    L[1]-2 };
        else if (shj == -1) return j != 0 ? i != L[0]-1 ? A2<szt>{ i+1, j-1    } :
                                                          A2<szt>{ 0,   j-1    } :
                                            i != L[0]-1 ? A2<szt>{ i+1, L[1]-1 } :
                                                          A2<szt>{ 0,   L[1]-1 };
        else if (shj ==  0) return i != L[0]-1 ? A2<szt>{ i+1, j } :
                                                 A2<szt>{ 0,   j };
        else if (shj ==  1) return j != L[1]-1 ? i != L[0]-1 ? A2<szt>{ i+1, j+1 }
                                                             : A2<szt>{ 0,   j+1 }
                                               : i != L[0]-1 ? A2<szt>{ i+1, 0   }
                                                             : A2<szt>{ 0,   0   };
        else if (shj ==  2) return i <  L[0]-1 ? j  < L[1]-2 ? A2<szt>{ i+1, j+2 }
                                               : j == L[1]-2 ? A2<szt>{ i+1, 0   }
                                                             : A2<szt>{ i+1, 1   }
                                               : j  < L[1]-2 ? A2<szt>{ 0,   j+2 }
                                               : j == L[1]-2 ? A2<szt>{ 0,   0   }
                                                             : A2<szt>{ 0,   1   };
        else return asError (shi, shj);
    }
    else if (shi ==  2) {
        if (     shj == -1) return i <  L[0]-2 ? j != 0 ? A2<szt>{ i+2, j-1    } :
                                                          A2<szt>{ i+2, L[1]-1 } :
                                   i == L[0]-2 ? j != 0 ? A2<szt>{ 0,   j-1    } :
                                                          A2<szt>{ 0,   L[1]-1 } :
                                                 j != 0 ? A2<szt>{ 1,   j-1    } :
                                                          A2<szt>{ 1,   L[1]-1 };
        else if (shj ==  0) return i <  L[0]-2 ? A2<szt>{ i+2, j } :
                                   i == L[0]-2 ? A2<szt>{ 0,   j } :
                                                 A2<szt>{ 1,   j };
        else if (shj ==  1) return i <  L[0]-2 ? j  < L[1]-1 ? A2<szt>{ i+2, j+1 } :
                                                               A2<szt>{ i+2, 0   } :
                                   i == L[0]-2 ? j  < L[1]-1 ? A2<szt>{ 0,   j+1 } :
                                                               A2<szt>{ 0,   0   } :
                                                 j  < L[1]-1 ? A2<szt>{ 1,   j+1 } :
                                                               A2<szt>{ 1,   0   };
        else if (shj ==  2) return i <  L[0]-2 ? j  < L[1]-2 ? A2<szt>{ i+2, j+2 } :
                                                 j == L[1]-2 ? A2<szt>{ i+2, 0   } :
                                                               A2<szt>{ i+2, 1   } :
                                   i == L[0]-2 ? j  < L[1]-2 ? A2<szt>{ 0,   j+2 } :
                                                 j == L[1]-2 ? A2<szt>{ 0,   0   } :
                                                               A2<szt>{ 0,   1   } :
                                                 j  < L[1]-2 ? A2<szt>{ 1,   j+2 } :
                                                 j == L[1]-2 ? A2<szt>{ 1,   0   } :
                                                               A2<szt>{ 1,   1   };
        else return asError(shi, shj);
    }
    else if (shi ==  3) {
        if (shj ==  1) return i <  L[0]-3 ? j  < L[1]-1 ? A2<szt>{ i+3, j+1 } :
                                                          A2<szt>{ i+3, 0   } :
                              i == L[0]-3 ? j  < L[1]-1 ? A2<szt>{ 0,   j+1 } :
                                                          A2<szt>{ 0,   0   } :
                              i == L[0]-2 ? j  < L[1]-1 ? A2<szt>{ 1,   j+1 } :
                                                          A2<szt>{ 1,   0   } :
                                             j < L[1]-1 ? A2<szt>{ 2,   j+1 } :
                                                          A2<szt>{ 2,   0   };
        else return asError(shi, shj);
    }
    else return asError(shi, shj);
}

Parameters const *BaseC::sps;
real BaseC::k_1_1;
real BaseC::k_1_3a;
real BaseC::k_1_3b;
real BaseC::k_1_4a;
real BaseC::k_1_4b;
real BaseC::k_2_3;
real BaseC::k_2_4;
real BaseC::k_3_4a;
real BaseC::k_3_4b;
real BaseC::k_4_4;
real BaseC::syn;
typename BaseC::ppmf BaseC::ph;

}  // namespace mosaicsc
