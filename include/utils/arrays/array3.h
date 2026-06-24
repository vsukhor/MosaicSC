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
 * \file array3.h
 * \brief Three-element arrays.
 * \author Valerii Sukhorukov
 */

#ifndef MOSAICSC_UTILS_ARRAYS_ARRAY3_H
#define MOSAICSC_UTILS_ARRAYS_ARRAY3_H

//#include "utils/misc.h"
#include "utils/arrays/_misc.h"
#include "utils/arrays/array2.h"
#include "utils/colorcodes.h"
#include "utils/constants.h"
#include "utils/logger.h"

#include <array>
#include <concepts>
#include <cmath>
#include <format>
#include <fstream>
#include <string>
#include <type_traits>
#include <vector>

/// Library-wide.
namespace mosaicsc::utils {

namespace common {

template<std::floating_point>
struct Geometric;

}  // namespace common

/// 3-element arrays.
namespace arrays {

/**
 * Three-element arrays.
 * \details This class specializes array template for three-element array
 * of arithmetic types. Implements convenient arithmetics as well as some
 * functionaity commonly used in 3-dimensional geometric applications.
 * \tparam T Type of the elements.
 */
template<arithmetic T>
struct array<3, T> {

using value_t = T;
using A2 = array<2, T>;

static constexpr array zeros {0};
static constexpr array ones {1};
static constexpr array undefs {undefined<T>};
static constexpr int size {3};

//private:  // variables

union {

    struct {
        T x;
        T y;
        T z;
    };

    T n[size];
};

public:  // methods

array() noexcept = default;

/// Scalar constructor.
constexpr array(const T m) noexcept
    : n {m, m, m}
{}

/// Constructor from explicit values.
constexpr array(const T n1, const T n2, const T n3) noexcept
    : n {n1, n2, n3}
{}

constexpr array(const T n1, const A2& n2) noexcept
    : n {n1, n2[0], n2[1]}
{}

constexpr array(const A2& n1, T n2) noexcept
    : n {n1[0], n1[1], n2}
{}

constexpr array(const array& p) noexcept
    : n {p[0], p[1], p[2]}
{}

constexpr array(const std::array<T, 3>& p) noexcept
    : n {p[0], p[1], p[2]}
{}

constexpr array(array&& p) noexcept = default;

constexpr array& operator=(array&& p) noexcept = default;

constexpr ~array() = default;

explicit array(std::ifstream& ist)
{
    read(ist);
}

template<typename Q>
constexpr array<3, Q> cast_static() const noexcept
{
    return {static_cast<Q>(n[0]),
            static_cast<Q>(n[1]),
            static_cast<Q>(n[2])};
}

static consteval array Constant(const T a) noexcept  // for Eigen compatibility
{
    return {a};
}

static consteval array constant(const T a) noexcept
{
    return {a};
}

constexpr A2 operator()(
    const int i1,
    const int i2
) const noexcept
{
    ASSERT(i1 >= 0 && i1 < size, "Index 1 out of bounds.");
    ASSERT(i2 >= 0 && i2 < size, "Index 2 out of bounds.");

    return {n[i1], n[i2]};
}

constexpr T const* data() const noexcept
{
    return n;
}

constexpr array& operator=(const array& p) noexcept
{
    if (this != &p) {
        n[0] = p[0];
        n[1] = p[1];
        n[2] = p[2];
    }
    return *this;
}

constexpr array& operator=(const std::array<T, 3>& p) noexcept
{
    if (*this != p) {
        n[0] = p[0];
        n[1] = p[1];
        n[2] = p[2];
    }
    return *this;
}

constexpr array& operator=(const T p[]) noexcept
{
    if (n != p) {
        n[0] = p[0];
        n[1] = p[1];
        n[2] = p[2];
    }
    return *this;
}

constexpr array& operator=(const T p) noexcept
{
    n[0] = p;
    n[1] = p;
    n[2] = p;

    return *this;
}

constexpr array operator+(const array& p) const noexcept
{
    return { n[0] + p[0],
             n[1] + p[1],
             n[2] + p[2] };
}

constexpr array operator+(const T p[]) const noexcept
{
    return { n[0] + p[0],
             n[1] + p[1],
             n[2] + p[2] };
}

constexpr array& operator+=(const array& p) noexcept
{
    n[0] += p[0];
    n[1] += p[1];
    n[2] += p[2];
    return *this;
}

constexpr array& operator+=(const T p[]) noexcept
{
    n[0] += p[0];
    n[1] += p[1];
    n[2] += p[2];
    return *this;
}

constexpr array operator+(const T p) const noexcept
{
    return { n[0] + p,
             n[1] + p,
             n[2] + p };
}

constexpr array operator-() const noexcept
{
    return {-n[0], -n[1], -n[2]};
}

constexpr array operator-(const array& p) const noexcept
{
    return { n[0] - p[0],
             n[1] - p[1],
             n[2] - p[2] };
}

constexpr array operator-(const T p[]) const noexcept
{
    return { n[0] - p[0],
             n[1] - p[1],
             n[2] - p[2] };
}

constexpr array& operator-=(const array& p) noexcept
{
    n[0] -= p[0];
    n[1] -= p[1];
    n[2] -= p[2];
    return *this;
}

constexpr array& operator-=(const T p[]) noexcept
{
    n[0] -= p[0];
    n[1] -= p[1];
    n[2] -= p[2];
    return *this;
}

constexpr array operator-(const T p) const noexcept
{
    return { n[0] - p,
             n[1] - p,
             n[2] - p };
}

constexpr array operator*(const array& p) const noexcept
{
    return { n[0] * p[0],
             n[1] * p[1],
             n[2] * p[2] };
}

constexpr array operator*(const T p[]) const noexcept
{
    return { n[0] * p[0],
             n[1] * p[1],
             n[2] * p[2] };
}

constexpr array& operator*=(const array& p) noexcept
{
    n[0] *= p[0];
    n[1] *= p[1];
    n[2] *= p[2];
    return *this;
}

constexpr array& operator*=(const T p[]) noexcept
{
    n[0] *= p[0];
    n[1] *= p[1];
    n[2] *= p[2];
    return *this;
}

constexpr array operator*(const T p) const noexcept
{
    return { n[0] * p,
             n[1] * p,
             n[2] * p };
}

constexpr array operator/(const array& p) const noexcept
{
    return { n[0] / p[0],
             n[1] / p[1],
             n[2] / p[2] };
}

constexpr array operator/(const T p[]) const noexcept
{
    return { n[0] / p[0],
             n[1] / p[1],
             n[2] / p[2] };
}

constexpr array& operator/=(const array& p) noexcept
{
    n[0] /= p[0];
    n[1] /= p[1];
    n[2] /= p[2];
    return *this;
}

constexpr array& operator/=(const T p[]) noexcept
{
    n[0] /= p[0];
    n[1] /= p[1];
    n[2] /= p[2];
    return *this;
}

constexpr array operator/(const T p) const noexcept
{
    return { n[0] / p,
             n[1] / p,
             n[2] / p };
}

constexpr bool operator==(const array& p) const noexcept
{
    return n[0] == p[0] &&
           n[1] == p[1] &&
           n[2] == p[2];
}

constexpr bool operator==(const std::array<T, 3>& p) const noexcept
{
    return n[0] == p[0] &&
           n[1] == p[1] &&
           n[2] == p[2];
}

constexpr bool operator==(const T p[]) const noexcept
{
    return n[0] == p[0] &&
           n[1] == p[1] &&
           n[2] == p[2];
}

constexpr bool operator==(const T p) const noexcept
{
    return n[0] == p &&
           n[1] == p &&
           n[2] == p;
}

constexpr bool operator!=(const array& p) const noexcept
{
    return n[0] != p[0] ||
           n[1] != p[1] ||
           n[2] != p[2];
}

constexpr bool operator!=(const std::array<T, 3>& p) const noexcept
{
    return n[0] != p[0] ||
           n[1] != p[1] ||
           n[2] != p[2];
}

constexpr bool operator!=(const T p[]) const noexcept
{
    return n[0] != p[0] ||
           n[1] != p[1] ||
           n[2] != p[2];
}

constexpr bool operator!=(const T p) const noexcept
{
    return n[0] != p ||
           n[1] != p ||
           n[2] != p;
}

constexpr bool operator<(const array& p) const noexcept
{
    return n[0] < p[0] &&
           n[1] < p[1] &&
           n[2] < p[2];
}

constexpr bool operator<(const T p) const noexcept
{
    return n[0] < p &&
           n[1] < p &&
           n[2] < p;
}

constexpr bool operator<=(const array& p) const noexcept
{
    return n[0] <= p[0] &&
           n[1] <= p[1] &&
           n[2] <= p[2];
}

constexpr bool operator<=(const T p) const noexcept
{
    return n[0] <= p &&
           n[1] <= p &&
           n[2] <= p;
}

constexpr bool operator>(const array& p) const noexcept
{
    return n[0] > p[0] &&
           n[1] > p[1] &&
           n[2] > p[2];
}

constexpr bool operator>(const T p) const noexcept
{
    return n[0] > p &&
           n[1] > p &&
           n[2] > p;
}

constexpr bool operator>=(const array& p) const noexcept
{
    return n[0] >= p[0] &&
           n[1] >= p[1] &&
           n[2] >= p[2];
}

constexpr bool operator>=(const T p) const noexcept
{
    return n[0] >= p &&
           n[1] >= p &&
           n[2] >= p;
}

constexpr T operator[](const int i) const noexcept
{
    ASSERT(i >= 0 && i < size, "Index ", i, " out of bounds");

    return n[i];
}

constexpr T& operator[](const int i) noexcept
{
    ASSERT(i >= 0 && i < size, "Index ", i, " out of bounds");

    return n[i];
}

constexpr const T* at(const int i) const noexcept
{
    ASSERT(i >= 0 && i < size, "Index ", i, " out of bounds");

    return &n[i];
}

constexpr T max_val() const noexcept
{
    auto mx = [](T a, T b) { return a > b ? a : b; };

    return mx(n[0], mx(n[1], n[2]));
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
            mn(n[2], other[2])};
}

/// max of the corresponding coefficients of the two arrays.
constexpr array max(const array& other) const noexcept
{
    auto mx = [](T a, T b) { return a > b ? a : b; };

    return {mx(n[0], other[0]),
            mx(n[1], other[1]),
            mx(n[2], other[2])};
}
constexpr bool contains(const T p) const noexcept
{
    return n[0] == p ||
           n[1] == p ||
           n[2] == p;
}

constexpr void reflect() noexcept
{
    T temp = n[0];
    n[0] = n[2];
    n[2] = temp;
}

constexpr array floor() const
{
    return {std::floor(n[0]),
            std::floor(n[1]),
            std::floor(n[2])};
}


constexpr array ceil() const
{
    return {std::ceil(n[0]),
            std::ceil(n[1]),
            std::ceil(n[2])};
}

static constexpr T dot(const array& a) noexcept
{
    return a.dotpr();
}

constexpr T dotpr() const noexcept
{
    return ( n[0] * n[0] +
             n[1] * n[1] +
             n[2] * n[2] );
}

constexpr T dotpr(const array& a) const noexcept
{
    return ( n[0] * a.n[0] +
             n[1] * a.n[1] +
             n[2] * a.n[2] );
}

static constexpr T dotpr(
        const array& a1,
        const array& a2
) noexcept
{
    return ( a1.n[0] * a2.n[0] +
             a1.n[1] * a2.n[1] +
             a1.n[2] * a2.n[2] );
}

constexpr T norm() const noexcept
{
    return std::sqrt(dotpr());
}

constexpr array unitv() const noexcept
{
    const auto n = norm();

    return n > 0 ? *this / n : undefs;
}

constexpr void normalize() noexcept
{
    const auto n = norm();

    *this = n > 0 ? *this / n : undefs;
}

constexpr bool is_unitv() const noexcept
{
    return std::abs(dotpr() - 1) < EPS<T>;
}

static constexpr bool is_unitv(const array& n) noexcept
{
    return std::abs(dotpr(n) - 1) < EPS<T>;
}

/// A perpendicular array, whose norm is unspecified.
constexpr array orthogonal() const noexcept
{
    return std::abs(n[0]) < std::abs(n[1])
           ? std::abs(n[0]) < std::abs(n[2])
              ? array {0,    -n[2], n[1]}
              : array {n[1], -n[0], 0}
           : std::abs(n[1]) < std::abs(n[2])
              ? array{-n[2],  0, n[0]}
              : array{n[1],  -n[0], 0};
}

/// A perpendicular array, whose norm is 'nrm'.
constexpr array orthogonal(const T nrm) const noexcept
{
    return orthogonal().unitv() * nrm;
}

/// Scalar projection of *this onto array b.
constexpr T scaProjection(const array& b) const noexcept
{
    const auto n = b.norm();

    return n > 0 ? dotpr(b) / n : undefs;
}

/// Vector projection of *this onto array b.
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
           static_cast<bool>(n[2]);
}

constexpr bool all() const noexcept
{
    return static_cast<bool>(n[0]) &&
           static_cast<bool>(n[1]) &&
           static_cast<bool>(n[2]);
}


constexpr int find(const T p) const noexcept
{
    return p == n[0] ? 0 :
          (p == n[1] ? 1 :
          (p == n[2] ? 2 : -1));
}

constexpr A2 other_than(const T p) const noexcept
{
    return p == n[0] ? A2(n[1], n[2]) :
          (p == n[1] ? A2(n[0], n[2]) :
          (p == n[2] ? A2(n[0], n[1]) : A2(-1)));
}

constexpr T other_than(const A2& p) const noexcept
{
    return (p == A2(n[0], n[1]) ||
            p == A2(n[1], n[0])) ? n[2] :
          ((p == A2(n[0], n[2]) ||
            p == A2(n[2], n[0])) ? n[1] :
          ((p == A2(n[1], n[2]) ||
            p == A2(n[2], n[1])) ? n[0] :
            -1));
}

constexpr T sum() const noexcept
{
    return n[0] + n[1] + n[2];
}

static constexpr array crosspr(
    const array& p1,
    const array& p2
) noexcept
{
    return { p1[1] * p2[2] - p1[2] * p2[1],
             p1[2] * p2[0] - p1[0] * p2[2],
             p1[0] * p2[1] - p1[1] * p2[0] };
}

constexpr array crosspr(const array& p2) const noexcept
{
    return { n[1] * p2[2] - n[2] * p2[1],
             n[2] * p2[0] - n[0] * p2[2],
             n[0] * p2[1] - n[1] * p2[0] };
}

constexpr void rotate(
    const T rm[3][3]
) noexcept
{
//    const array m {rm[0][0]*n[0]+rm[0][1]*n[1]+rm[0][2]*n[2],
//                    rm[1][0]*n[0]+rm[1][1]*n[1]+rm[1][2]*n[2],
//                    rm[2][0]*n[0]+rm[2][1]*n[1]+rm[2][2]*n[2] }; new
    const array m {rm[0][0] * n[0] + rm[1][0] * n[1] + rm[2][0] * n[2],
                   rm[0][1] * n[0] + rm[1][1] * n[1] + rm[2][1] * n[2],
                   rm[0][2] * n[0] + rm[1][2] * n[1] + rm[2][2] * n[2] };
    *this = m;
}

// Rotate vector v with rotation matrix rm.
static constexpr array rotate(
    const array& v,
    const T rm[3][3]
) noexcept
{
    return { rm[0][0] * v[0] + rm[1][0] * v[1] + rm[2][0] * v[2],
             rm[0][1] * v[0] + rm[1][1] * v[1] + rm[2][1] * v[2],
             rm[0][2] * v[0] + rm[1][2] * v[1] + rm[2][2] * v[2] };
}

// Rotate vector v through an 'angle' around an 'axis' in 3D.
static constexpr array rotate(
    const array& axis,
    const array& v,
    const T angle
) noexcept
{
    T rm[3][3];
    common::Geometric<T>::rotmat(axis, angle, rm);

    return { rm[0][0] * v[0] + rm[1][0] * v[1] + rm[2][0] * v[2],
             rm[0][1] * v[0] + rm[1][1] * v[1] + rm[2][1] * v[2],
             rm[0][2] * v[0] + rm[1][2] * v[1] + rm[2][2] * v[2] };
}

constexpr array rotate(
    const T rm[][3]
) const noexcept
{
    return { rm[0][0] * n[0] + rm[1][0] * n[1] + rm[2][0] * n[2],
             rm[0][1] * n[0] + rm[1][1] * n[1] + rm[2][1] * n[2],
             rm[0][2] * n[0] + rm[1][2] * n[1] + rm[2][2] * n[2] };
}

constexpr array rotate(
    const array& axis,
    const T angle
) const noexcept
{
    T rm[3][3];
    common::Geometric<T>::rotmat(axis, angle, rm);

    return { rm[0][0] * n[0] + rm[1][0] * n[1] + rm[2][0] * n[2],
             rm[0][1] * n[0] + rm[1][1] * n[1] + rm[2][1] * n[2],
             rm[0][2] * n[0] + rm[1][2] * n[1] + rm[2][2] * n[2] };
}

/**
 * Finds out if there are at least two equal components.
 */
constexpr bool has_equal_components() const noexcept
{
    return n[0] == n[1] ||
           n[1] == n[2] ||
           n[0] == n[2];
}

/**
 * Finds out if all array components are equal.
 */
constexpr bool all_components_are_equal() const noexcept
{
    return n[0] == n[1] &&
           n[1] == n[2];
}

constexpr T max_component_length() const noexcept
{
    return std::max(std::max(std::abs(n[0]), std::abs(n[1])), std::abs(n[2]));
}

constexpr auto permutations() const noexcept -> std::array<array, 6>
{
    return {{{n[0], n[1], n[2]},
             {n[0], n[2], n[1]},
             {n[1], n[0], n[2]},
             {n[1], n[2], n[0]},
             {n[2], n[0], n[1]},
             {n[2], n[1], n[0]}}};
}

constexpr bool is_defined(const array& a)
{
    return a != undefs;
}

void print(
    std::ostream& os,
    const bool end
) const noexcept
{
    os << n[0] << " " << n[1] << " " << n[2];
    if (end) os << std::endl;
}

std::string str(
    const char* color=Colorcodes::RESET
) const noexcept
{
    return std::format("[{}{} {} {}{}]",
                       color, n[0], n[1], n[2], Colorcodes::RESET);
}

static array sum(
    const array a[],
    const size_t i1,
    const size_t i2
) noexcept
{
    array res {};
    for (size_t i=i1; i<=i2; i++)
        res += a[i];
    return res;
}

static constexpr array mean(
    const std::vector<array>& a
) noexcept
{
    return sum(a) / a.size();
}

static constexpr array mean(
    const array a[],
    const size_t& i1,
    const size_t& i2
) noexcept
{
    return sum(a, i1, i2) / (i2 - i1 + 1);
}


void read(std::ifstream& ist) noexcept
{
    ist.read(reinterpret_cast<char*>(&n[0]), sizeof(T));
    ist.read(reinterpret_cast<char*>(&n[1]), sizeof(T));
    ist.read(reinterpret_cast<char*>(&n[2]), sizeof(T));
}

void write(std::ofstream& ost) const noexcept
{
    ost.write(reinterpret_cast<const char*>(&n[0]), sizeof(T));
    ost.write(reinterpret_cast<const char*>(&n[1]), sizeof(T));
    ost.write(reinterpret_cast<const char*>(&n[2]), sizeof(T));
}

[[nodiscard]] constexpr array<2, int> equal_dims() const noexcept
{
    if (n[0] == n[1]) return {0, 1};
    if (n[0] == n[2]) return {0, 2};
    if (n[1] == n[2]) return {1, 2};

    return {-1, -1};
}

[[nodiscard]] constexpr int index_min() const noexcept
{
    return n[0] > n[1] ? (n[1] > n[2] ? 2 : 1)
                       : (n[0] > n[2] ? 2 : 0);
}

};  // struct array<3, T>

template<arithmetic T>
constexpr array<3, T> sqrt(const array<3, T>& a)
{
    return {std::sqrt(a.x),
            std::sqrt(a.y),
            std::sqrt(a.z)};
}

template<arithmetic T>
constexpr array<3, T> pow2(const array<3, T>& a)
{
    return {a.x*a.x,
            a.y*a.y,
            a.z*a.z};
}

template<arithmetic T>
constexpr array<3, T> pow3(const array<3, T>& a)
{
    return {a.x * a.x * a.x,
            a.y * a.y * a.y,
            a.z * a.z * a.z};
}

/// Input operator.
template<arithmetic T>
std::istream& operator>>(
    std::istream& is,
    array<3, T>& a
)
{
    is >> a[0] >> a[1] >> a[2];

    return is;
}

/// Output operator.
template<arithmetic T>
std::ostream& operator<<(
    std::ostream& os,
    const array<3, T>& a
)
{
    a.print(os, false);

    return os;
}

}    // namespace arrays
}    // namespace mosaicsc::utils

#endif // MOSAICSC_UTILS_ARRAYS_ARRAY3_H
