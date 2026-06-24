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

#include "utils/misc.h"

///< Define to switch the GPU use off
//#define MOSAICSC_USE_CUDA  // is a compiler option preset by cmake
#ifdef MOSAICSC_USE_CUDA
    #include "utils/random/with_cuda.h"
#else
    #include "utils/random/with_stl.h"
#endif

#include <array>
#include <string_view>
#include <type_traits>

namespace mosaicsc {

using namespace std::string_literals;
using namespace std::string_view_literals;

inline constexpr bool realIsDouble {false};  ///< double or float ?
using real = std::conditional_t<realIsDouble, double, float>;

#if MOSAICSC_USE_CUDA
    using RandFactory = utils::random::Cuda<real>;
    inline constexpr bool useCuda {true};
#else
    using RandFactory = utils::random::WithSTL<real>;
    inline constexpr bool useCuda {false};
#endif

template<typename T> using A2 = std::array<T, 2>;
template<typename T> using A3 = std::array<T, 3>;
template<typename T> using A4 = std::array<T, 4>;

struct Ornt {

    using value_t = int;     // data type used by the class
    static constexpr value_t up {1};
    static constexpr value_t no {0};
    static constexpr value_t dw {-1};
    static constexpr value_t nd {utils::huge<value_t>};

    // Return the up side down orientation:
    static constexpr value_t usd(const value_t from)
    {
        return from == up
               ? dw
               : from == dw
                 ? up
                 : from;
    }
};

// Aliaces to utility library names.
using uint = unsigned int;
using ulong = unsigned long;
using szt = std::size_t;
using vec2real = utils::vec2<real>;
using vec2szt = utils::vec2<szt>;
using vec2uint = utils::vec2<uint>;
using vec2ort = utils::vec2<Ornt::value_t>;

// Template to be futrther customized in component type-specific
// specializations.
template<uint> class C {};

}  // namespace mosaicsc

#endif  // MOSAICSC_DEFINITIONS_H
