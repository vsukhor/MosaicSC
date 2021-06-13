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

#ifndef MOSAICSC_DEFINITIONS_H
#define MOSAICSC_DEFINITIONS_H

#include "utils/common/misc.h"

#define MOSAICSC_FP32    ///< Comment this out to switch to double precision.
#define MOSAICSC_CUDA 0  ///< Define MOSAICSC_CUDA > 0 to switch the GPU use off

#if MOSAICSC_CUDA>0
    #include "utils/random/with_cuda.h"
#else
    #include "utils/random/with_boost.h"
#endif

namespace mosaicsc {

#ifdef MOSAICSC_FP32
    using real = float;
#else
    using real = double;
#endif

#if MOSAICSC_CUDA>0
    using RandFactory = utils::random::Cuda<real>;
#else
    using RandFactory = utils::random::Boost<real>;
#endif

template<typename T> using A2 = std::array<T,2>;
template<typename T> using A3 = std::array<T,3>;
template<typename T> using A4 = std::array<T,4>;

struct Ornt {

    using T = int;     // data type used by the class
    static constexpr T up {1};
    static constexpr T no {0};
    static constexpr T dw {-1};
    static constexpr T nd {utils::common::huge<T>};

    // Return the up side down orientation:
    static constexpr T usd( const T from )
    {
        return (from == up)
                ? dw : (from == dw)
                ? up : from;
    }
};

// Aliaces to utility library names.
using szt = utils::common::szt;
using uint = utils::common::uint;
using ulong = utils::common::ulong;
using vec2real = utils::common::vec2<real>;
using vec2szt = utils::common::vec2<szt>;
using vec2uint = utils::common::vec2<uint>;
using vec2ort = utils::common::vec2<Ornt::T>;

// Template to be futrther customized in component type-specific
// template specializations.
template<uint> class C {};

} // namespace mosaicsc

#endif // MOSAICSC_DEFINITIONS_H
