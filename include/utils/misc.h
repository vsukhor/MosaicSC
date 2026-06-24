/* =============================================================================

 Copyright (C) 2009-2023 Valerii Sukhorukov. All Rights Reserved.

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
* \file misc.h
* A loose collection of functions of common use.
* \author Valerii Sukhorukov
*/

#ifndef MOSAICSC_UTILS_COMMON_MISC_H
#define MOSAICSC_UTILS_COMMON_MISC_H


#include "utils/constants.h"
#include "utils/logger.h"
#include "utils/misc.h"

#include <array>
#include <algorithm>
#include <cmath>
#include <cstdio>
#include <fstream>
#include <iostream>
#include <map>
#include <memory>
#include <numeric>
#include <sys/stat.h>
#include <string_view>
#include <vector>


/// General stuff.
namespace mosaicsc::utils {


/// Sum at compile time.
template<typename T,
        typename Q,
          T (Q::* P)() const> // member function pointer parameter
struct Adder {
    int operator()(const T& i, const Q& o) const {
        return (o.*P)() + i;
    }
};

/// 2D stl-based vectors.
namespace Vec2 {

/// Make a 2D vector having the same dimensions as \b as.
template<typename T1,
         typename T2>
vec2<T1> array_like( const vec2<T2>& as )
{
    vec2<T1> me(as.size());
    for (size_t i=0; i<as.size(); i++)
        me[i].resize(as[i].size());
    return me;
}

/// Make a 2D vector having dimensions \b x and \b y eventually initializing it to \b ini.
template<typename T>
vec2<T> make( const size_t x,
              const size_t y,
              const T ini )  // =0
{
    vec2<T> v(x);
    for (auto& vv : v)
        vv.resize(y, ini);
    return v;
}

/// Return the size of 2D vector \b v.
template<typename T>
size_t size( const vec2<T>& v )
{
    size_t s {};
    for (auto& vv : v)
        s += vv.size();
    return s;
}

/// Fill 2D vector \b v with value \b val.
template<typename T>
void fill( vec2<T>& v,
           const T val )
{
    for (auto& o : v)
        for (auto& oo : o)
            oo = val;
}

}  // namespace Vec2

/// Average of the vector elements.
template<typename T>
auto avg( const std::vector<T>& v )
{
    if constexpr (std::is_integral<T>::value)
        return std::accumulate(v.begin(), v.end(), 0LL) /
               static_cast<double>(v.size());
    else
        return std::accumulate(v.begin(), v.end(), T(0)) /
               v.size();
}

/// Variance of the vector elements.
template<typename T>
T var( const std::vector<T>& n )
{
    T v {};
    T mn {avg(n)};
    for (const auto& o : n)
        v += (o - mn) * (o - mn);

    return v / n.size();
}


template<auto E=EXIT_FAILURE>
void exit( const std::string_view& s )
{
    std::cerr << s << std::endl;
    std::exit(E);
};

/// Uncomplicated process termination with exception.
struct Exception
    : public std::exception {

    Exception() = default;

    /**
     * Constructor for printing to a log record.
     * \details Outputs message \p msg to \a Msgr for standard
     * output (if \p msgr is nullptr).
     * \param msg Message to output.
     * \param msgr Output message processor.
     */
    explicit Exception( const std::string_view& msg,
                        Msgr* msgr )
    {
        if (msgr != nullptr)
            msgr->print(msg);
        else
            std::cerr << msg << std::endl;
    }

};

}  // namespace mosaicsc::utils


#endif // MOSAICSC_UTILS_COMMON_MISC_H
