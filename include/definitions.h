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

#ifndef MOSAICSC_DEFINITIONS_H
#define MOSAICSC_DEFINITIONS_H

#include "utils/common/misc.h"
#include "utils/common/threads.h"
#include "utils/common/stop_watch.h"
#include "utils/common/exceptions.h"

#define _DEBUG
#define FP32      // comment this out to switch to double precision
#define CUDA 0    // define CUDA > 0 to switch the GPU use off

#if CUDA>0
    #include "utils/random/with_cuda.h"
#else
    #include "utils/random/with_boost.h"
#endif

namespace MosaicSC {

template<typename T> using A2 = std::array<T,2>;
template<typename T> using A3 = std::array<T,3>;
template<typename T> using A4 = std::array<T,4>;

#ifdef FP32
    using real = float;
#else
    using real = double;
#endif

#if CUDA>0
    typedef Utils::Random::Cuda<MosaicSC::real> RandFactory;
#else
    typedef Utils::Random::Boost<MosaicSC::real> RandFactory;
#endif

using namespace Utils::Common;

template<uint> class C {};

    struct Ornt {
        using T = int;     // data type used by the class
        static constexpr T up {1};
        static constexpr T no {0};
        static constexpr T dw {-1};
        static constexpr T nd {huge<Ornt::T>};

        // return the up side down orientation:
        static constexpr T usd( const T from )
        {
            return (from == up)
                    ? dw : (from == dw)
                         ? up : from;
        }
    };
} // namespace MosaicSC

#endif // MOSAICSC_DEFINITIONS_H
