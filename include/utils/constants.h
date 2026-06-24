/* =============================================================================

 Copyright (C) 2009-2025 Valerii Sukhorukov. All Rights Reserved.

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

/**
* \file constants.h
* A collection of useful definitions.
* \author Valerii Sukhorukov
*/

#ifndef MOSAICSC_UTILS_CONSTANTS_H
#define MOSAICSC_UTILS_CONSTANTS_H

#include "utils/undefined.h"

#include <array>
#include <cmath>
#include <limits>
#include <memory>
#include <numeric>
#include <string>
#include <type_traits>
#include <vector>

/// Library namespace.
namespace mosaicsc::utils {

template<typename T>
concept arithmetic = std::integral<T> ||
                     std::floating_point<T>;


/// Make these definitions available to the whole library by defaule.
inline namespace constants {

template<typename T>
constexpr auto STR(T x)
{
    if constexpr (std::is_arithmetic_v<T>)
        return std::to_string(x);
    else //if constexpr (std::is_same_v<T, char*>)
        return std::string(x);
//    else
//        static_assert(false, "Unsupported type");
}

using ulong = unsigned long;
using uint = unsigned int;
using size_t = std::size_t;

// container typedefs ==========================================================

// std vector-based 2, 3, 4-dim containers
template<typename T> using vec2 = std::vector<std::vector<T>>;
template<typename T> using vec3 = std::vector<vec2<T>>;
template<typename T> using vec4 = std::vector<vec3<T>>;

// std vector and std array
template<typename T, auto N> using arrvec = std::array<std::vector<T>, N>;
template<typename T, auto N> using vecarr = std::vector<std::array<T, N>>;

// std vector of unique pointers
template<typename T> using vup = std::vector<std::unique_ptr<T>>;

// common constants ============================================================
template<typename T> inline constexpr auto thrd = static_cast<T>(1.L/3.L);
template<typename T> inline constexpr auto half = static_cast<T>(.5L);

template<std::floating_point T> inline constexpr auto
    pi = static_cast<T>(3.1415926535897932384626433832795L);
template<std::floating_point T> inline constexpr auto
    twopi = 2 * pi<T>;
template<std::floating_point T> inline constexpr auto
    halfpi = T(0.5) * pi<T>;
template<std::floating_point T> inline constexpr auto
    sqrtPI = static_cast<T>(1.7724538509055160272981674833411L);

template<std::floating_point T> inline constexpr T
    sqrt2PI {
        std::pow(twopi<T>, half<T>)
    };

template<std::floating_point T> inline constexpr auto
    sqrt2 = static_cast<T>(1.41421356237309504880168872420969807856967L);

template<std::floating_point T> inline constexpr auto
    e = static_cast<T>(2.7182818284590452353602874713527L);

// Templates for numeric limits. ===============================================
/*
template<typename T>
concept numerically_limited = std::numeric_limits<T>::is_specialized;

template<numerically_limited T>
inline constexpr T EPS {std::numeric_limits<T>::epsilon()};

template<numerically_limited T>
inline constexpr T huge {
        std::numeric_limits<T>::has_infinity
        ? std::numeric_limits<T>::infinity()
        : std::numeric_limits<T>::max()
    };

template<numerically_limited T>
inline constexpr T undefined {huge<T>};

template<numerically_limited T> constexpr
bool is_defined(const T a)
{
    return a != undefined<T>;
}
template<numerically_limited T> constexpr
bool is_undefined(const T a)
{
    return a == undefined<T>;
}

template<numerically_limited T> inline constexpr
T MAX {std::numeric_limits<T>::max()};

template<numerically_limited T> inline constexpr
T MIN {std::numeric_limits<T>::min()};

template<numerically_limited T> inline constexpr
T INF {std::numeric_limits<T>::infinity()};
*/
// std arrays filled with common constants. ====================================

/**
 * Produce std::array initialized to \p val.
 * \tparam T std::array template parameter.
 * \tparam N std::array template parameter.
 * \param val Value to which the array elements are set.
 * \return std::array initialized to \p val.
 */
template<typename T,
         auto N>
constexpr
auto filled_array(const T val)
{
    std::array<T, N> a {};
    a.fill(val);

    return a;
}

template<auto N> constexpr std::array<bool, N> falses {
    filled_array<bool, N>(false)
};
template<auto N> constexpr std::array<bool, N> trues {
    filled_array<bool, N>(true)
};
template<typename T, auto N> constexpr std::array<T, N> zeros {
    filled_array<T, N>(0)
};
template<typename T, auto N> constexpr std::array<T, N> ones {
    filled_array<T, N>(1)
};
template<typename T, auto N> constexpr std::array<T, N> hundreds {
    filled_array<T, N>(static_cast<T>(100.L))
};
template<typename T, auto N> constexpr std::array<T, N> huges {
    filled_array<T, N>(huge<T>)
};
template<typename T, auto N> constexpr std::array<T, N> mhuges {
    filled_array<T, N>(-huge<T>)
};

// Range borders as two-element std arrays. ====================================

inline constexpr std::array<bool,2> bools {{false, true}};
template<typename T> inline constexpr std::array<T, 2> zeroone {{0, 1}};
template<typename T> inline constexpr std::array<T, 2> zerohuge {{0, huge<T>}};
template<typename T> inline constexpr std::array<T, 2> onehuge {{1, huge<T>}};
template<typename T> inline constexpr std::array<T, 2> moneone {{-1, 1}};
template<typename T> inline constexpr std::array<T, 2> mhugehuge {{-huge<T>, huge<T>}};
template<typename T> inline constexpr std::array<T, 2> mhugezero {{-huge<T>, 0}};

// Range borders as two-element std vectors of arrays. =========================

template<auto N> const std::vector rangeBools {falses<N>, trues<N>};
template<auto N> const vecarr<bool,N> vecarrFT {falses<N>, trues<N>};
template<typename T, auto N> const vecarr<T,N> vecarr0H {zeros<T, N>, huges<T, N>};
template<typename T, auto N> const vecarr<T,N> vecarr01 {zeros<T, N>, ones<T, N>};

// ANSI colors =================================================================

inline constexpr auto ANSI_RESET      = "\x1B[0m";
inline constexpr auto ANSI_FG_BLACK   = "\x1b[30m";
inline constexpr auto ANSI_FG_RED     = "\x1B[31m";
inline constexpr auto ANSI_FG_GREEN   = "\x1B[32m";
inline constexpr auto ANSI_FG_YELLOW  = "\x1B[33m";
inline constexpr auto ANSI_FG_BLUE    = "\x1B[34m";
inline constexpr auto ANSI_FG_MAGENTA = "\x1B[35m";
inline constexpr auto ANSI_FG_CYAN    = "\x1B[36m";
inline constexpr auto ANSI_FG_WHITE   = "\x1B[37m";
inline constexpr auto ANSI_BG_RED     = "\x1b[41m";
inline constexpr auto ANSI_BG_GREEN   = "\x1b[42m";
inline constexpr auto ANSI_BG_YELLOW  = "\x1b[43m";
inline constexpr auto ANSI_BG_BLUE    = "\x1b[44m";
inline constexpr auto ANSI_BG_MAGENTA = "\x1b[45m";
inline constexpr auto ANSI_BG_CYAN    = "\x1b[46m";
inline constexpr auto ANSI_BG_WHITE   = "\x1b[47m";
inline constexpr auto ANSI_BOLD_ON    = "\x1b[1m";
inline constexpr auto ANSI_BOLD_OFF   = "\x1b[22m";
inline constexpr auto ANSI_INVERSE_ON = "\x1b[7m";

}  // namespace constants

}  // namespace mosaicsc::utils

#endif // MOSAICSC_UTILS_CONSTANTS_H
