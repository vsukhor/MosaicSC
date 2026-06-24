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
 * \file array2.h
 * \brief Two-element arrays.
 * \author Valerii Sukhorukov
*/

#ifndef MOSAICSC_UTILS_ARRAYS_ARRAY2_H
#define MOSAICSC_UTILS_ARRAYS_ARRAY2_H

#include "utils/arrays/_misc.h"
//#include "utils/misc.h"
#include "utils/colorcodes.h"
#include "utils/constants.h"
#include "utils/logger.h"

#include <array>
#include <cmath>
#include <format>
#include <fstream>
#include <string>
#include <type_traits>
#include <vector>


namespace mosaicsc::utils::arrays {

/**
 * Two-element arrays.
 * \details This class specializes array template for two-element array of
 * arithmetic types. Implements convenient arithmetics as well as some
 * functionaity commonly used in 2-dimensional geometric applications.
 * \tparam T Type of the elements.
 */
template<arithmetic T>
struct array<2, T> {

using value_t = T;

static constexpr array zeros {0};
static constexpr array ones {1};
static constexpr array undefs {undefined<T>};

static constexpr int size {2};

//private:  // variables

union {

    struct {
        T x;
        T y;
    };

    T n[size];
};

public:  // methods

array() noexcept = default;

/// Scalar constructor.
constexpr array(const T m) noexcept
    : n {m, m}
{}

/// Constructor from explicit values.
constexpr array(const T n1, const T n2) noexcept
    : n {n1, n2}
{}

constexpr array(const array& p) noexcept
    : n {p[0], p[1]}
{}

constexpr array(const std::array<T, 2>& p) noexcept
    : n {p[0], p[1]}
{}

template<typename K>
constexpr array(const std::array<K, 2>& p) noexcept
    : n {p[0], p[1]}
{}

constexpr array(array&& p) noexcept = default;

constexpr  array& operator=(array&& p) noexcept = default;

~array() = default;

template<typename Q>
constexpr array<2, Q> cast_static() const noexcept
{
    return {static_cast<Q>(n[0]),
            static_cast<Q>(n[1])};
}

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
    }
    return *this;
}

constexpr array& operator=(const std::array<T, 2>& p) noexcept
{
    if (*this != p) {
        n[0] = p[0];
        n[1] = p[1];
    }
    return *this;
}

constexpr array& operator=(const T p[]) noexcept
{
    if (n != p) {
        n[0] = p[0];
        n[1] = p[1];
    }
    return *this;
}

constexpr array& operator=(const T p) noexcept
{
    n[0] = p;
    n[1] = p;
    return *this;
}

constexpr array operator+(const array& p) const noexcept
{
    return { n[0] + p[0],
             n[1] + p[1] };
}

template<typename K>
constexpr array operator+(const array<2, K>& p) const noexcept
{
    return { n[0] + p[0],
             n[1] + p[1] };
}

constexpr array operator+(const T p[]) const noexcept
{
    return { n[0] + p[0],
             n[1] + p[1] };
}

constexpr array operator+(const T p) const noexcept
{
    return { n[0] + p,
             n[1] + p };
}

constexpr array& operator+=(const array& p) noexcept
{
    n[0] += p[0];
    n[1] += p[1];

    return *this;
}

constexpr array& operator+=(const T p[]) noexcept
{
    n[0] += p[0];
    n[1] += p[1];

    return *this;
}

constexpr array operator-() const noexcept
{
    return {-n[0], -n[1]};
}

constexpr array operator-(const array& p) const noexcept
{
    return { n[0] - p[0],
             n[1] - p[1] };
}

constexpr array operator-(const T p[]) const noexcept
{
    return { n[0] - p[0],
             n[1] - p[1] };
}

constexpr array& operator-=(const array& p) noexcept
{
    n[0] -= p[0];
    n[1] -= p[1];
    return *this;
}

constexpr array& operator-=(const T p[]) noexcept
{
    n[0] -= p[0];
    n[1] -= p[1];
    return *this;
}

constexpr array operator-(const T p) const noexcept
{
    return { n[0] - p,
             n[1] - p };
}

constexpr array operator*(const array& p) const noexcept
{
    return { n[0] * p[0],
             n[1] * p[1] };
}

constexpr array operator*(const T p[]) const noexcept
{
    return { n[0]*p[0],
             n[1]*p[1] };
}

constexpr array& operator*=(const array& p) noexcept
{
    n[0] *= p[0];
    n[1] *= p[1];
    return *this;
}

constexpr array& operator*=(const T p[]) noexcept
{
    n[0] *= p[0];
    n[1] *= p[1];
    return *this;
}

constexpr array operator*(const T p) const noexcept
{
    return { n[0] * p,
             n[1] * p };
}

constexpr array operator/(const array& p) const noexcept
{
    return { n[0] / p[0],
             n[1] / p[1] };
}

constexpr array& operator/=(const array& p) noexcept
{
    n[0] /= p[0];
    n[1] /= p[1];
    return *this;
}

constexpr array& operator/=(const T p[]) noexcept
{
    n[0] /= p[0];
    n[1] /= p[1];
    return *this;
}

constexpr array operator/(const T p) const noexcept
{
    return { n[0] / p,
             n[1] / p };
}

constexpr bool operator==(const array& p) const noexcept
{
    return n[0] == p[0] &&
           n[1] == p[1];
}

constexpr bool operator==(const std::array<T, 2>& p) const noexcept
{
    return n[0] == p[0] &&
           n[1] == p[1];
}

constexpr  bool operator==(const T p[]) const noexcept
{
    return n[0] == p[0] &&
           n[1] == p[1];
}

constexpr bool operator==(const T p) const noexcept
{
    return n[0] == p &&
           n[1] == p;
}

constexpr bool operator!=(const array& p) const noexcept
{
    return n[0] != p[0] ||
           n[1] != p[1];
}

constexpr bool operator!=(const std::array<T, 2>& p) const noexcept
{
    return n[0] != p[0] ||
           n[1] != p[1];
}

constexpr bool operator!=(const T p[]) const noexcept
{
    return n[0] != p[0] ||
           n[1] != p[1];
}

constexpr bool operator!=(const T p) const noexcept
{
    return n[0] != p ||
           n[1] != p;
}

constexpr bool operator<(const array& p) const noexcept
{
    return n[0] < p[0] &&
           n[1] < p[1];
}

constexpr bool operator<(const T p) const noexcept
{
    return n[0] < p &&
           n[1] < p;
}

constexpr bool operator<=(const array& p) const noexcept
{
    return n[0] <= p[0] &&
           n[1] <= p[1];
}

constexpr bool operator<=(const T p) const noexcept
{
    return n[0] <= p &&
           n[1] <= p;
}

constexpr bool operator>(const array& p) const noexcept
{
    return n[0] > p[0] &&
           n[1] > p[1];
}

constexpr bool operator>(const T p) const noexcept
{
    return n[0] > p &&
           n[1] > p;
}

constexpr bool operator>=(const array& p) const noexcept
{
    return n[0] >= p[0] &&
           n[1] >= p[1];
}

constexpr bool operator>=(const T p) const noexcept
{
    return n[0] >= p &&
           n[1] >= p;
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

[[nodiscard]] constexpr bool contains(const T p) const noexcept
{
    return n[0] == p ||
           n[1] == p;
}

constexpr void reflect() noexcept
{
    T temp = n[0];
    n[0] = n[1];
    n[1] = temp;
}

constexpr array floor() const
{
    return {std::floor(n[0]),
            std::floor(n[1])};
}


constexpr array ceil() const
{
    return {std::ceil(n[0]),
            std::ceil(n[1])};
}


constexpr int find(const T p) noexcept
{
    return p == n[0] ? 0
                     : (p == n[1] ? 1 : -1);
}

constexpr T other_than(const T p) noexcept
{
    return p == n[0] ? n[1]
                     : (p == n[1] ? n[0] : -1);
}

[[nodiscard]] constexpr T sum() const noexcept
{
    return n[0] + n[1];
}

static constexpr T dot(const array& a) noexcept
{
    return a.dotpr();
}

[[nodiscard]] constexpr T dotpr() const noexcept
{
    return n[0] * n[0] +
           n[1] * n[1];
}

[[nodiscard]] constexpr T dotpr(
    const array& a
) const noexcept
{
    return n[0] * a.n[0] +
           n[1] * a.n[1];
}

static constexpr T
dotpr(
    const array& a1,
    const array& a2
) noexcept
{
    return a1.n[0] * a2.n[0] +
           a1.n[1] * a2.n[1];
}

[[nodiscard]] constexpr T norm() const noexcept
{
    return std::sqrt(dotpr());
}

/// A perpendicular array, whose norm is unspecified.
[[nodiscard]] constexpr array orthogonal() const noexcept
{
    return array {-n[1], n[0]};
}

/// A perpendicular array, whose norm is 'nrm'.
[[nodiscard]] constexpr array orthogonal(const T nrm) const noexcept
{
    return orthogonal().unitv() * nrm;
}

constexpr void normalize() noexcept
{
    const auto n = norm();

    *this = n > 0 ? *this / n : undefs;
}

[[nodiscard]] constexpr array unitv() const noexcept
{
    const auto n = norm();

    return n > 0 ? *this / n : undefs;
}

constexpr bool is_unitv() const noexcept
{
    return std::abs(dotpr() - 1) < EPS<T>;
}

static constexpr bool is_unitv(const array& n) noexcept
{
    return std::abs(dotpr(n) - 1) < EPS<T>;
}

// Scalar projection of *this onto array b.
[[nodiscard]]constexpr T scaProjection(
    const array& b
) const noexcept
{
    const auto n = b.norm();

    return n > 0 ? dotpr(b) / n : undefs;
}

// Vector projection of *this onto array b.
[[nodiscard]] constexpr array vecProjection(
    const array& b
) const noexcept
{
    return b.unitv() * scaProjection(b);
}

// Magnitude of the vector that would result from a regular 3D cross product
// of the input vectors, taking their Z values implicitly as 0.
static constexpr T crosspr(
    const array& p1,
    const array& p2
) noexcept
{
    return p1[0] * p2[1] - p1[1] * p2[0];
}

[[nodiscard]] constexpr T crosspr(const array& p) const noexcept
{
    return n[0] * p[1] - n[1] * p[0];
}

static constexpr bool less0(
    const array& a1,
    const array& a2
) noexcept
{
    return a1[0] < a2[0];
}

static constexpr bool less1(
    const array& a1,
    const array& a2
) noexcept
{
    return a1[1] < a2[1];
}

constexpr bool any() const noexcept
{
    return static_cast<bool>(n[0]) ||
           static_cast<bool>(n[1]);
}

constexpr bool all() const noexcept
{
    return static_cast<bool>(n[0]) &&
           static_cast<bool>(n[1]);
}

constexpr T max_val() const noexcept
{
    return n[0] > n[1] ? n[0] : n[1];
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
            mn(n[1], other[1])};
}

/// max of the corresponding coefficients of the two arrays.
constexpr array max(const array& other) const noexcept
{
    auto mx = [](T a, T b) { return a > b ? a : b; };

    return {mx(n[0], other[0]),
            mx(n[1], other[1])};
}

constexpr T max_component_length() const noexcept
{
    return std::max(std::abs(n[0]), std::abs(n[1]));
}

/**
 * Finds out if there are at least two equal components.
 */
constexpr bool has_equal_components() const noexcept
{
    return n[0] == n[1];
}

/**
 * Finds out if all array components are equal.
 */
constexpr bool all_components_are_equal() const noexcept
{
    return n[0] == n[1];
}

constexpr auto permutations() const noexcept -> std::array<array, 6>
{
    return {{{n[0], n[1]},
             {n[1], n[0]}}};
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
    os << n[0] << " " << n[1];
    if (end) os << std::endl;
}

std::string str(
    const char* color=Colorcodes::RESET
) const noexcept
{
    return std::format("[{}{} {}{}]",
                       color, n[0], n[1], Colorcodes::RESET);
}

static constexpr array sum(
    const std::vector<array>& a
) noexcept
{
    array res{};
    for (const auto o : a)
        res += o;
    return res;
}

static constexpr array sum(
    const array a[],
    size_t i1,
    size_t i2
) noexcept
{
    array res{};
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
    size_t i1,
    size_t i2
) noexcept
{
    return sum(a, i1, i2) / (i2 - i1 + 1);
}


void read( std::ifstream& ist) noexcept
{
    ist.read(reinterpret_cast<char*>(&n[0]), sizeof(T));
    ist.read(reinterpret_cast<char*>(&n[1]), sizeof(T));
}

void write( std::ofstream& ost) const noexcept
{
    ost.write(reinterpret_cast<const char*>(&n[0]), sizeof(T));
    ost.write(reinterpret_cast<const char*>(&n[1]), sizeof(T));
}

};  // struct array<2, T>

template<arithmetic T>
constexpr array<2, T> sqrt(const array<2, T>& a)
{
    return {std::sqrt(a.x),
            std::sqrt(a.y)};
}

template<arithmetic T>
constexpr array<2, T> pow2(const array<2, T>& a)
{
    return {a.x*a.x,
            a.y*a.y};
}

template<arithmetic T>
constexpr array<2, T> pow3(const array<2, T>& a)
{
    return {a.x * a.x * a.x,
            a.y * a.y * a.y};
}

/// Input operator.
template<arithmetic T>
std::istream& operator>>(
    std::istream& is,
    array<2, T>& a
)
{
    is >> a[0] >> a[1];

    return is;
}

/// Output operator.
template<arithmetic T>
std::ostream& operator<<(
    std::ostream& os,
    const array<2, T>& a
)
{
    a.print(os, false);

    return os;
}

}  // namespace mosaicsc::utils::arrays

#endif // MOSAICSC_UTILS_ARRAYS_ARRAY2_H
