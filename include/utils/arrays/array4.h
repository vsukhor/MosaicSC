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
 * \file array4.h
 * \brief Four-element arrays.
 * \author Valerii Sukhorukov
 */

#ifndef MOSAICSC_UTILS_ARRAYS_ARRAY4_H
#define MOSAICSC_UTILS_ARRAYS_ARRAY4_H

//#include "utils/misc.h"
#include "utils/arrays/_misc.h"
#include "utils/colorcodes.h"
#include "utils/constants.h"
#include "utils/logger.h"

#include <array>
#include <cmath>
#include <format>
#include <fstream>
#include <string>
#include <vector>

/// 4-element arrays.
namespace mosaicsc::utils::arrays {

/** \brief Four-element arrays.
 * \details This class specializes array template for four-element array of
 * arithmetic types. Implements convenient arithmetics as well as some
 * functionaity commonly used in 4-dimensional geometric applications.
 * \tparam T Type of the elements.
 */
template<arithmetic T>
struct array<4, T> {

using value_t = T;
using A2 = array<2, T>;
using A3 = array<3, T>;

static constexpr array zeros {0};
static constexpr array ones {1};
static constexpr array undefs {undefined<T>};

static constexpr int size {4};

// private:  // variables

union {
    struct {
        T x;
        T y;
        T z;
        T w;
    };
    T n[size];
};

public:  // methods

array() noexcept = default;

constexpr array(const T m) noexcept
    : n {m, m, m, m}
{}

/// Constructor from explicit values.
constexpr array(
    const T n0,
    const T n1,
    const T n2,
    const T n3
) noexcept
    : n {n0, n1, n2, n3}
{}

constexpr array(
    const A2& n1,
    const A2& n2
) noexcept
    : n {n1[0], n1[1], n2[0], n2[1]}
{}

constexpr array(
    const T n1,
    const A3& n2
) noexcept
    : n {n1, n2[0], n2[1], n2[2]}
{}

constexpr array(
    const A3& n1,
    T n2
) noexcept
    : n {n1[0], n1[1], n1[2], n2}
{}

constexpr array(const array& p) noexcept
    : n {p[0], p[1], p[2], p[3]}
{}

constexpr array(const std::array<T, 4>& p) noexcept
    : n {p[0], p[1], p[2], p[3]}
{}

template<typename Q>
constexpr array<4, Q> cast_static() const noexcept
{
    return {static_cast<Q>(n[0]),
            static_cast<Q>(n[1]),
            static_cast<Q>(n[2]),
            static_cast<Q>(n[3])};
}

constexpr array(array&& p) noexcept = default;
constexpr array& operator=( array&& p) noexcept = default;
~array() = default;

static consteval array Constant(const T a) noexcept  // for Eigen compatibility
{
    return {a};
}

static consteval array constant(const T a) noexcept
{
    return {a};
}

constexpr array& operator=(const array& p) noexcept
{
    if (this != &p) {
        n[0] = p[0];
        n[1] = p[1];
        n[2] = p[2];
        n[3] = p[3];
    }

    return *this;
}

constexpr array& operator=(const std::array<T, 4>& p) noexcept
{
    if (*this != p) {
        n[0] = p[0];
        n[1] = p[1];
        n[2] = p[2];
        n[3] = p[3];
    }

    return *this;
}

constexpr array& operator=(const T p[]) noexcept
{
    if (n != p) {
        n[0] = p[0];
        n[1] = p[1];
        n[2] = p[2];
        n[3] = p[3];
    }

    return *this;
}

constexpr array& operator=(const T p) noexcept
{
    n[0] = p;
    n[1] = p;
    n[2] = p;
    n[3] = p;

    return *this;
}

constexpr A2 operator()(
    const int i1,
    const int i2
) const noexcept
{
    ASSERT(i1 >= 0 && i1 < size, "Index 1 out of bounds: ", i1);
    ASSERT(i2 >= 0 && i2 < size, "Index 2 out of bounds: ", i2);

    return {n[i1], n[i2]};
}

constexpr A3 operator()(
    const int i1,
    const int i2,
    const int i3
) const noexcept
{
    ASSERT(i1 >= 0 && i1 < size, "Index 1 out of bounds: ", i1);
    ASSERT(i2 >= 0 && i2 < size, "Index 2 out of bounds: ", i2);
    ASSERT(i3 >= 0 && i3 < size, "Index 3 out of bounds; ", i3);

    return {n[i1], n[i2], n[i3]};
}

constexpr array operator+(const array& p) const noexcept
{
    return { n[0] + p[0],
             n[1] + p[1],
             n[2] + p[2],
             n[3] + p[3] };
}

constexpr array operator+(const T p[]) const noexcept
{
    return { n[0] + p[0],
             n[1] + p[1],
             n[2] + p[2],
             n[3] + p[3] };
}

constexpr array& operator+=(const array& p) noexcept
{
    n[0] += p[0];
    n[1] += p[1];
    n[2] += p[2];
    n[3] += p[3];

    return *this;
}

constexpr array& operator+=(const T p[]) noexcept
{
    n[0] += p[0];
    n[1] += p[1];
    n[2] += p[2];
    n[3] += p[3];

    return *this;
}

constexpr array operator+(const T p) const noexcept
{
    return { n[0] + p,
             n[1] + p,
             n[2] + p,
             n[3] + p };
}

constexpr array operator-() const noexcept
{
    array q;

    q[0] = -n[0];
    q[1] = -n[1];
    q[2] = -n[2];
    q[3] = -n[3];

    return q;
}

constexpr array operator-(const array& p) const noexcept
{
    return { n[0] - p[0],
             n[1] - p[1],
             n[2] - p[2],
             n[3] - p[3] };
}

constexpr array operator-(const T p[]) const noexcept
{
    return { n[0] - p[0],
             n[1] - p[1],
             n[2] - p[2],
             n[3] - p[3] };
}

constexpr array& operator-=(const array& p) noexcept
{
    n[0] -= p[0];
    n[1] -= p[1];
    n[2] -= p[2];
    n[3] -= p[3];

    return *this;
}

constexpr array& operator-=(const T p[]) noexcept
{
    n[0] -= p[0];
    n[1] -= p[1];
    n[2] -= p[2];
    n[3] -= p[3];

    return *this;
}

constexpr array operator-(const T p) const noexcept
{
    return { n[0] - p,
             n[1] - p,
             n[2] - p,
             n[3] - p };
}

constexpr array operator*(const array& p) const noexcept
{
    return { n[0] * p[0],
             n[1] * p[1],
             n[2] * p[2],
             n[3] * p[3] };
}

constexpr array operator*(const T p[]) const noexcept
{
    return { n[0] * p[0],
             n[1] * p[1],
             n[2] * p[2],
             n[3] * p[3] };
}
constexpr array& operator*=(const array& p) noexcept
{
    n[0] *= p[0];
    n[1] *= p[1];
    n[2] *= p[2];
    n[3] *= p[3];

    return *this;
}

constexpr array& operator*=(const T p[]) noexcept
{
    n[0] *= p[0];
    n[1] *= p[1];
    n[2] *= p[2];
    n[3] *= p[3];

    return *this;
}

constexpr array operator*(const T p) const noexcept
{
    return { n[0] * p,
             n[1] * p,
             n[2] * p,
             n[3] * p };
}

constexpr array operator/(const array& p) const noexcept
{
    return { n[0] / p[0],
             n[1] / p[1],
             n[2] / p[2],
             n[3] / p[3] };
}

constexpr array operator/(const T p[]) const noexcept
{
    return { n[0] / p[0],
             n[1] / p[1],
             n[2] / p[2],
             n[3] / p[3] };
}

constexpr array& operator/=(const array& p) noexcept
{
    n[0] /= p[0];
    n[1] /= p[1];
    n[2] /= p[2];
    n[3] /= p[3];

    return *this;
}

constexpr array& operator/=(const T p[]) noexcept
{
    n[0] /= p[0];
    n[1] /= p[1];
    n[2] /= p[2];
    n[3] /= p[3];

    return *this;
}

constexpr array operator/(const T p) const noexcept
{
    return { n[0] / p,
             n[1] / p,
             n[2] / p,
             n[3] / p };
}

constexpr bool operator==(const array& p) const noexcept
{
    return n[0] == p[0] &&
           n[1] == p[1] &&
           n[2] == p[2] &&
           n[3] == p[3];
}

constexpr bool operator==(const std::array<T,4>& p) const noexcept
{
    return n[0] == p[0] &&
           n[1] == p[1] &&
           n[2] == p[2] &&
           n[3] == p[3];
}

constexpr bool operator==(const T p[]) const noexcept
{
    return n[0] == p[0] &&
           n[1] == p[1] &&
           n[2] == p[2] &&
           n[3] == p[3];
}

constexpr bool operator==(const T p) const noexcept
{
    return n[0] == p &&
           n[1] == p &&
           n[2] == p &&
           n[3] == p;
}

constexpr bool operator!=(const array& p) const noexcept
{
    return n[0] != p[0] ||
           n[1] != p[1] ||
           n[2] != p[2] ||
           n[3] != p[3];
}

constexpr bool operator!=(const T p[]) const noexcept
{
    return n[0] != p[0] ||
           n[1] != p[1] ||
           n[2] != p[2] ||
           n[3] != p[3];
}

constexpr bool operator!=(const T p) const noexcept
{
    return n[0] != p ||
           n[1] != p ||
           n[2] != p ||
           n[3] != p;
}

constexpr bool operator<(const array& p) const noexcept
{
    return n[0] < p[0] &&
           n[1] < p[1] &&
           n[2] < p[2] &&
           n[3] < p[3];
}

constexpr bool operator<(const T p) const noexcept
{
    return n[0] < p &&
           n[1] < p &&
           n[2] < p &&
           n[3] < p;
}

constexpr bool operator<=(const array& p) const noexcept
{
    return n[0] <= p[0] &&
           n[1] <= p[1] &&
           n[2] <= p[2] &&
           n[3] <= p[3];
}
constexpr bool operator<=(const T p) const noexcept
{
    return n[0] <= p &&
           n[1] <= p &&
           n[2] <= p &&
           n[3] <= p;
}

constexpr bool operator>(const array& p) const noexcept
{
    return n[0] > p[0] &&
           n[1] > p[1] &&
           n[2] > p[2] &&
           n[3] > p[3];
}

constexpr bool operator>(const T p) const noexcept
{
    return n[0] > p &&
           n[1] > p &&
           n[2] > p &&
           n[3] > p;
}

constexpr bool operator>=(const array& p) const noexcept
{
    return n[0] >= p[0] &&
           n[1] >= p[1] &&
           n[2] >= p[2] &&
           n[3] >= p[3];
}

constexpr bool operator>=(const T p) const noexcept
{
    return n[0] >= p &&
           n[1] >= p &&
           n[2] >= p &&
           n[3] >= p;
}

constexpr T operator[](const int i) const noexcept
{
    ASSERT(i >= 0 && i < size, "Index out of bounds: ", i);

    return n[i];
}

constexpr T& operator[](const int i) noexcept
{
    ASSERT(i >= 0 && i < size, "Index out of bounds: ", i);

    return n[i];
}

constexpr bool contains(const T p) const noexcept
{
    return n[0] == p ||
           n[1] == p ||
           n[2] == p ||
           n[3] == p;
}

constexpr T max_val() const noexcept
{
    auto mx = [](T a, T b) { return a > b ? a : b; };

    return mx(n[0], mx(n[1], mx(n[2], n[3])));
}

constexpr T maxCoeff() const noexcept  // for Eigen compatibility
{
    return max_val();
}

/// min of the corresponding coefficients of the two arrays.
constexpr array min(const array& other) const noexcept
{
    auto mn = [](T a, T b) { return a < b ? a : b; };

    return {mn(n[0], other[0]),
            mn(n[1], other[1]),
            mn(n[2], other[2]),
            mn(n[3], other[3])};
}

/// max of the corresponding coefficients of the two arrays.
constexpr array max(const array& other) const noexcept
{
    auto mx = [](T a, T b) { return a > b ? a : b; };

    return {mx(n[0], other[0]),
            mx(n[1], other[1]),
            mx(n[2], other[2]),
            mx(n[3], other[3])};
}

constexpr void reflect() noexcept
{
    T temp = n[0];
    n[0] = n[3];
    n[3] = temp;
    temp = n[1];
    n[1] = n[2];
    n[2] = temp;
}

constexpr array floor() const
{
    return {std::floor(n[0]),
            std::floor(n[1]),
            std::floor(n[2]),
            std::floor(n[3])};
}


constexpr array ceil() const
{
    return {std::ceil(n[0]),
            std::ceil(n[1]),
            std::ceil(n[2]),
            std::ceil(n[3])};
}

static constexpr T dot(const array& a) noexcept
{
    return a.dotpr();
}

constexpr T dotpr() const noexcept
{
    return ( n[0]*n[0] +
             n[1]*n[1] +
             n[2]*n[2] +
             n[3]*n[3] );
}

constexpr T dotpr(const array& a) const noexcept
{
    return ( n[0]*a.n[0] +
             n[1]*a.n[1] +
             n[2]*a.n[2] +
             n[3]*a.n[3] );
}

static constexpr T dotpr(
    const array& a1,
    const array& a2
) noexcept
{
    return ( a1.n[0]*a2.n[0] +
             a1.n[1]*a2.n[1] +
             a1.n[2]*a2.n[2] +
             a1.n[3]*a2.n[3] );
}

constexpr T norm() const noexcept
{
    return std::sqrt(dotpr());
}

constexpr void normalize() noexcept
{
    const auto n = norm();

    *this = n > 0 ? *this / n : undefs;
}

constexpr array unitv() const noexcept
{
    const auto n = norm();

    return n > 0 ? *this / n : undefs;
}

constexpr bool is_unitv() const noexcept
{
    return std::abs(dotpr(n) - 1) < EPS<T>;
}

static constexpr bool is_unitv(const array& n) noexcept
{
    return std::abs(dotpr() - 1) < EPS<T>;
}

// Scalar projection of *this onto array b.
constexpr T scaProjection(
    const array& b
) const noexcept
{
    const auto n = b.norm();

    return n > 0 ? dotpr(b) / n : undefs;
}

// Vector projection of *this onto array b.
constexpr array vecProjection(
    const array& b
) const noexcept
{
    return b.unitv() * scaProjection(b);
}

constexpr bool any() const noexcept
{
    return static_cast<bool>(n[0]) ||
           static_cast<bool>(n[1]) ||
           static_cast<bool>(n[2]) ||
           static_cast<bool>(n[3]);
}

constexpr bool all() const noexcept
{
    return static_cast<bool>(n[0]) &&
           static_cast<bool>(n[1]) &&
           static_cast<bool>(n[2]) &&
           static_cast<bool>(n[3]);
}

constexpr int find(const T p) const noexcept
{
    return p == n[0] ? 0 :
          (p == n[1] ? 1 :
          (p == n[2] ? 2 :
          (p == n[3] ? 3 : -1)));
}

array<2,int> find(const A2& p) const noexcept
{
    return (p[0] == n[0] && p[1] == n[0])
           ? array<2,int>(0, 1)
           : (p == n[1] ? 1 :
             (p == n[2] ? 2 :
             (p == n[3] ? 3 : -1)));
}

constexpr A3 other_than(const T p) const noexcept
{
    return p == n[0] ? A3(n[1], n[2], n[3]) :
          (p == n[1] ? A3(n[0], n[2], n[3]) :
          (p == n[2] ? A3(n[0], n[1], n[3]) :
          (p == n[3] ? A3(n[0], n[1], n[2]) :
          A3(-1))));
}

constexpr A2 other_than(const A2& p) const noexcept
{
    using A = A2;

    return (p == A {n[0], n[1]} ||
            p == A2(n[1], n[0])) ? A2(n[2], n[3]) :
          ((p == A2(n[0], n[2]) ||
            p == A2(n[2], n[0])) ? A2(n[1], n[3]) :
          ((p == A2(n[0], n[3]) ||
            p == A2(n[3], n[0])) ? A2(n[1], n[2]) :
          ((p == A2(n[1], n[2]) ||
            p == A2(n[2], n[1])) ? A2(n[0], n[3]) :
          ((p == A2(n[1], n[3]) ||
            p == A2(n[3], n[1])) ? A2(n[0], n[2]) :
          ((p == A2(n[2], n[3]) ||
            p == A2(n[3], n[2])) ? A2(n[0], n[1]) :
          A2(-1))))));
}

constexpr T other_than(const A3& p) const noexcept
{
    return (p == A3(n[0], n[1], n[2]) ||
            p == A3(n[0], n[2], n[1]) ||
            p == A3(n[1], n[0], n[2]) ||
            p == A3(n[1], n[2], n[0]) ||
            p == A3(n[2], n[0], n[1]) ||
            p == A3(n[2], n[1], n[0]) ) ? n[3] :
          ((p == A3(n[0], n[1], n[3]) ||
            p == A3(n[0], n[3], n[1]) ||
            p == A3(n[1], n[0], n[3]) ||
            p == A3(n[1], n[3], n[0]) ||
            p == A3(n[3], n[0], n[1]) ||
            p == A3(n[3], n[1], n[0])) ? n[2] :
          ((p == A3(n[0], n[3], n[2]) ||
            p == A3(n[0], n[2], n[3]) ||
            p == A3(n[3], n[0], n[2]) ||
            p == A3(n[3], n[2], n[0]) ||
            p == A3(n[2], n[0], n[3]) ||
            p == A3(n[2], n[3], n[0])) ? n[1] :
          ((p == A3(n[3], n[1], n[2]) ||
            p == A3(n[3], n[2], n[1]) ||
            p == A3(n[1], n[3], n[2]) ||
            p == A3(n[1], n[2], n[3]) ||
            p == A3(n[2], n[3], n[1]) ||
            p == A3(n[2], n[1], n[3])) ? n[0]
            : -1)));
}

constexpr bool is_defined(const array& a) const noexcept
{
    return a != undefs;
}

/**
 * Finds out if there are at least two equal components.
 */
constexpr bool has_equal_components() const noexcept
{
    return n[0] == n[1] ||
           n[0] == n[2] ||
           n[0] == n[3] ||
           n[1] == n[2] ||
           n[1] == n[3] ||
           n[2] == n[3];
}

/**
 * Finds out if all array components are equal.
 */
constexpr bool all_components_are_equal() const noexcept
{
    return n[0] == n[1] &&
           n[1] == n[2] &&
           n[2] == n[3];
}

constexpr T sum() const noexcept
{
    return n[0] + n[1] + n[2] + n[3];
}

constexpr auto permutations() const noexcept -> std::array<array, 12>
{
    return {{
        {n[0], n[1], n[2], n[3]},
        {n[0], n[1], n[3], n[2]},
        {n[0], n[2], n[1], n[3]},
        {n[0], n[2], n[3], n[1]},
        {n[0], n[3], n[1], n[2]},
        {n[0], n[3], n[2], n[1]},

        {n[1], n[0], n[2], n[3]},
        {n[1], n[0], n[3], n[2]},
        {n[1], n[2], n[0], n[3]},
        {n[1], n[2], n[3], n[0]},
        {n[1], n[3], n[0], n[2]},
        {n[1], n[3], n[2], n[0]},

        {n[2], n[0], n[1], n[3]},
        {n[2], n[0], n[3], n[1]},
        {n[2], n[1], n[0], n[3]},
        {n[2], n[1], n[3], n[0]},
        {n[2], n[3], n[0], n[1]},
        {n[2], n[3], n[1], n[0]},

        {n[3], n[0], n[1], n[2]},
        {n[3], n[0], n[2], n[1]},
        {n[3], n[1], n[0], n[2]},
        {n[3], n[1], n[2], n[0]},
        {n[3], n[2], n[0], n[1]},
        {n[3], n[2], n[1], n[0]},
    }};
}

void print(
    std::ostream& os,
    bool end
) const noexcept
{
    os << n[0] << " " << n[1] << " " << n[2] << " " << n[3];
    if (end) os << std::endl;
}

std::string str(
    const char* color=Colorcodes::RESET
) const noexcept
{
    return std::format("[{}{} {} {} {}{}]",
                       color, n[0], n[1], n[2], n[3], Colorcodes::RESET);
}

static constexpr array sum(
    const array a[],
    const size_t& i1,
    const size_t& i2
) noexcept
{
    array res{};
    for (size_t i=i1; i<=i2; i++)
        res += a[i];

    return res;
}

constexpr static array mean(
    const std::vector<array>& a
) noexcept
{
    return sum(a) / a.size();
}

static constexpr array mean(
    const array a[],
    size_t i1,
    size_t i2
) noexcept
{
    return sum(a, i1, i2) / (i2 - i1 + 1);
}

void read(
    std::ifstream& ist
) noexcept
{
    ist.read( reinterpret_cast<char*>(&n[0]), sizeof(T));
    ist.read( reinterpret_cast<char*>(&n[1]), sizeof(T));
    ist.read( reinterpret_cast<char*>(&n[2]), sizeof(T));
    ist.read( reinterpret_cast<char*>(&n[3]), sizeof(T));
}

void write(
    std::ofstream& ost
) const noexcept
{
    ost.write( reinterpret_cast<const char*>(&n[0]), sizeof(T));
    ost.write( reinterpret_cast<const char*>(&n[1]), sizeof(T));
    ost.write( reinterpret_cast<const char*>(&n[2]), sizeof(T));
    ost.write( reinterpret_cast<const char*>(&n[3]), sizeof(T));
}

};  // struct array<4, T>


template<arithmetic T>
constexpr array<4, T> sqrt(const array<4, T>& a)
{
    return {std::sqrt(a.x),
            std::sqrt(a.y),
            std::sqrt(a.z),
            std::sqrt(a.w)};
}

template<arithmetic T>
constexpr array<4, T> pow2(const array<4, T>& a)
{
    return {a.x*a.x,
            a.y*a.y,
            a.z*a.z,
            a.w*a.w};
}

template<arithmetic T>
constexpr array<4, T> pow3(const array<4, T>& a)
{
    return {a.x * a.x * a.x,
            a.y * a.y * a.y,
            a.z * a.z * a.z,
            a.w * a.w * a.w};
}

/// Input operator.
template<arithmetic T>
std::istream& operator>>(
    std::istream& is,
    array<4, T>& a
)
{
    is >> a[0] >> a[1] >> a[2] >> a[3];

    return is;
}


/// Output operator.
template<arithmetic T>
std::ostream& operator<<(
    std::ostream& os,
    const array<4, T>& a
)
{
    a.print(os, false);

    return os;
}


}  // namespace mosaicsc::utils::arrays

#endif  // MOSAICSC_UTILS_ARRAYS_ARRAY4_H
