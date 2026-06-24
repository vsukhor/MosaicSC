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
* \file with_stl.h
* \author Valerii Sukhorukov
*/

#ifndef MOSAICSC_UTILS_RANDOM_WITH_STL_H
#define MOSAICSC_UTILS_RANDOM_WITH_STL_H

#include "../arrays/all.h"
//#include "utils/misc.h"
#include "utils/constants.h"
#include "utils/random/core.h"

#include <cmath>
#include <concepts>
#include <filesystem>
#include <random>
#include <string>
#include <type_traits>
#include <vector>

/// Pseugo-random number generation.
namespace mosaicsc::utils::random {

/**
 * Random number factory based on STL distribution functions.
 * \tparam real Floating point type.
 */
template<std::floating_point real>
struct WithSTL
    : public Core<real>
{
    using Real = real;
    using A2r = utils::arrays::array<2, real>;
    using A3r = utils::arrays::array<3, real>;

    static constexpr auto pi = utils::pi<real>;
    static constexpr auto twopi = utils::twopi<real>;
    static constexpr auto halfpi = utils::halfpi<real>;

    /**
     * Constructor setting the seed uncoupled from run index.
     * \param seed    Random number generator seed.
     * \param runName Human-readable run index.
     * \param msgr    Output message processor.
     */
    explicit WithSTL(
        unsigned int seed,
        const std::string& runName,
        Msgr& msgr
    );

    /**
     * Constructor setting the seed depending on run index.
     * \param runIndex Run index.
     * \param msgr     Output message processor.
     */
    explicit WithSTL(
        unsigned int runIndex,
        Msgr& msgr
    );

    void reseed(const unsigned int s = huge<unsigned int>);

    /// A pseudo-random number with uniform distribution over [0,1).
    real r01u();

    /**
     * A pseudo-random signed int from the range [0, max-1].
     * \param max Max boundary of the sampled range.
     */
    constexpr int uniform0(int max);

    /**
     * A pseudo-random unsigned int from the range [0, max-1].
     * \param max Max boundary of the sampled range.
     */
    constexpr uint uniform0(uint max);

    /**
     * A pseudo-random std::size_t from the range [0, max-1].
     * \param max Max boundary of the sampled range.
     */
    constexpr std::size_t uniform0(std::size_t max);

    /**
     * A pseudo-random real from the range [0., max].
     * \param max Max boundary of the sampled range.
     */
    constexpr real uniform0(real max);

    /**
     * A pseudo-random integer from the range [1, max].
     * \tparam intT Integer fundamental type.
     * \param max Max boundary of the sampled range.
     */
    template<std::unsigned_integral intT>
    constexpr intT uniform1(intT max);

    /**
     * Direction sampled from a uniform distribution in 3D.
     * \param[in] solidAngle Constraining solid angle.
     * \return Coordinates of a point on the surface of a unit sphere and
     * sampled from uinformly distributed directions within \p solidAngle of the
     * sphere pole.
     */
    constexpr auto uniform_direction(
        real solidAngle  //=pi
    ) noexcept -> A3r;

    /**
     * Direction sampled from a uniform distribution in 3D.
     * \details Calculates position of a point uinformly distributed within
     * boundaries on the surface of a unit sphere.
     * Inclination is limited by \p inclMinMax [0, pi) around +z axis
     * direction (i.e. \p phPole == 0).
     * Azimuth is limited by \p azimMinMax [-pi, pi) around +x axis
     * direction  (i.e. \p th == 0).
     * \param[in] inclMinMax Min, max constrains on inclination.
     * \param[in] azimMinMax Min, max constrains on azimuth.
     * \param[in] azimSymmetric Switch if the azimuth is symmetric.
     * \param[out] phPole Inclination of the resulting point.
     * \param[out] th Azimuth of the resulting point.
     * \return Point on a sphere uinformly distributed within angular boundaries.
     */
    constexpr auto uniform_direction(
        const A2r& inclMinMax,
        const A2r& azimMinMax,
        bool azimSymmetric,
        real& phPole,
        real& th
    ) noexcept -> A3r;

    /**
     * A point uinformly distributed within boundaries on a sphere surface.
     * \details Implements trigonometric method.
     * \param solidAngle Surface patch where the random point may belong to;
     * set it to pi for the whole surface.
     * \param r Shpere radius.
     * \param poleDir [0,1,2] is the index of the axis around which \p
     * solidAngle is set.
     * \return A point uinformly distributed within \p solidAngle on a
     * shpere of radius \p r .
     */
    auto uniform_on_sphere(
        real solidAngle,  //=pi,
        real r,           //=1,
        int poleDir       //=2
    ) noexcept -> A3r;

    /**
     * A point uinformly distributed within boundaries on a spheroid surface.
     * \details Implements trigonometric method.
     * \param solidAngle Surface patch where the random point may belong to;
     * set it to pi for the whole surface.
     * \param r Spheroid semi-axes dimensions: r[0] = a = b, r[1] = c
     * \param poleDir [0,1,2] is the index of the axis around which \p
     * solidAngle is set.
     * \param bias [-1,0,1]: -1 towards poles; 1 towards equator, 0 no bias
     * \param biasPar Bias strength.
     * \return A point uinformly distributed within \p solidAngle on a
     * shperoid of semi-axes dimensions \p r.
     */
    auto uniform_on_spheriod(
        real solidAngle, //=pi,
        const A2r& r,    //=1,
        int poleDir,     //=2,
        int bias,        //=0,
        real biasPar     //=0
    ) noexcept -> A3r;

    /**
     * Uinform directional (angular) distribution
     * \details A point on the ellipse boundary from a uinform directional
     * (angular) distribution.
     * \note This is not a uniform density over the ellipse boundary.
     * The ellipse is centered at (0,0)
     * \param r Semi-axes dimensions of the ellipse: r = {a, b}.
     */
    constexpr auto uniform_on_ellipse(
        const A2r& r  //=1
    ) noexcept -> A2r;

    /**
     * Point uinformly distributed over ellipse area .
     * \details A point within the ellipse boundary having uinform
     * distribution over the ellipse area.
     * The ellipse is centered at (0,0)
     * \param r Semi-axes dimensions of the ellipse: r = {a, b}.
     */
    constexpr auto uniform_in_ellipse(
        const A2r& r  //=1
    ) noexcept -> A2r;

//  /**
//     * Uniformly distributed posiiton within ellipse
//     * \details A shifted point within the ellipse boundary having uinform
//     * distribution over the ellipse area.
//     * \param r1 Semi-axes dimensions of the ellipse: r1 = {a, b}.
//     * \param r0 Ellipse center.
//     * \param shift Offset.
//     */
//    A2<real> uniform_in_ellipse(const A2r& r1,
//                                const A2r& r0,
//                                const A2r& shift=0) noexcept;

    /**
     * Exponentially distributed random numbers.
     * \param mi Rate parameter of the Exponentiql distribution.
     * \return A pseudo-random number sampled from Exponential distribution.
     */
    constexpr real exponential_number(
        real mi
    ) noexcept;

    /**
     * Poisson distributed random numbers.
     * \param lambda Rate parameter of the poissonian distribution.
     * \return A pseudo-random number sampled from Poisson distribution.
     */
    uint poisson_number(
        real lambda
    ) noexcept;

    /**
     * Weibull distributed random numbers.
     * \param lambda Scale parameter of the Weibull distribution.
     * \param k Shape parameter of the Weibull distribution
     * \return A pseudo-random number sampled from Weibull distribution.
     */
    constexpr real weibull_number(
        real lambda,
        real k
    )  noexcept;

    /**
     * Logistically distributed random numbers.
     * \param mi Mean of the Logistic distribution.
     * \param s Scale parameter of the Logistic distribution.
     * \return A pseudo-random number sampled from Logistic distribution.
     */
    constexpr real logistic_number(
        real mi,
        real s
    )  noexcept;

    /**
     * Binomially distributed (n, p) pseudo-random number.
     * \param n Number of trials.
     * \param p Trial outcome probability.
     * \return A pseudo-random number sampled from binomial distribution.
     */
    uint binomial_number(
        uint n,
        real p
    )  noexcept;

    /**
     * Multinomially distributed pseudo-random numbers.
     * \details Of the \p n independent trials each of which leads to a
     * success for exactly one of \p k categories,
     * with each category having a given fixed success probability.
     * \param n Number of trials.
     * \param k Number of categories.
     * \return A vector of multinomially distributed deviates.
     */
    std::vector<uint> multinomial_number(
        uint n,
        uint k
    )  noexcept;

    /**
     * Multinomially distributed pseudo-random numbers.
     * \details Distributes \p n into p.size()+1 slots with
     * probabilities p[0], p[1], ..., p.back(), 1 - sum(p)
     * \param n Number of trials.
     * \param p Vector of probabilities.
     * \return A vector of multinomially distributed deviates.
     */
    std::vector<uint> multinomial_number(
        uint n,
        std::vector<real> p
    ) noexcept;

    /**
     * Normally distributed pseudo-random number.
     * \param mi Mean.
     * \param sigma Standard deviation.
     * \return Normally distributed deviate N(mi, sigma^2).
     */
    constexpr real gaussian_number(
        real mi,
        real sigma
    ) noexcept;

    /**
     * Constrained normal deviate.
     * \details Normally distributed pseudo-random number constrained
     * between \p cmin and \p cmax.
     * \param mi Mean.
     * \param sigma Standard deviation.
     * \param cmin Lower boundary.
     * \param cmax Upper boundary.
     * \return Normally distributed deviate N(mi, sigma^2).
     */
    constexpr real gaussian_number_constrained(
        real mi,
        real sigma,
        real cmin,
        real cmax
    ) noexcept;

private:

    using Core<real>::bufferSize;

    /// Uniform 0 to 1 float.
    std::uniform_real_distribution<float>  flt01_unifromDistr {std::uniform_real_distribution<float>(0.0, 1.0)};

    /// Uniform 0 to 1 double.
    std::uniform_real_distribution<double> dbl01_unifromDistr {std::uniform_real_distribution<double>(0.0, 1.0)};

    /// Standard normal distribution.
    std::normal_distribution<real> normalDistr;

    /// Buffer array for storing random numbers.
    std::array<real, bufferSize> rU01;

    /// Index of the current random number in \a rU01.
    volatile size_t rU01_ind;

    std::mt19937 g;       ///< Random number generator.

    /// Populates the buffer array \a rU01 with a new butch of random numbers.
    void prepare_uniform_real01();
};


// IMPLEMENTATION ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

template<std::floating_point real>
WithSTL<real>::
WithSTL(
    const unsigned int seed,
    const std::string& runName,
    utils::Msgr& msgr
)
    : Core<real> {seed, runName, msgr}
    , rU01_ind {bufferSize}
{
    g.seed(this->get_seed());
}


template<std::floating_point real>
WithSTL<real>::
WithSTL(
    const unsigned int runIndex,
    utils::Msgr& msgr
)
    : Core<real> {runIndex, msgr}
    , rU01_ind {bufferSize}
{
    g.seed(this->get_seed());
}

template<> inline
void WithSTL<float>::
reseed(const unsigned int s)
{
    if (s != huge<unsigned int> &&
        s != this->get_seed()) {

        this->seed = make_seed(s);
        rU01_ind = bufferSize;
        g.seed(this->get_seed());
    }
}

// Generates real random numbers with uniform distribution over [0,1)
template<> inline
void WithSTL<float>::
prepare_uniform_real01()
{
    for (auto& o : rU01)
        o = flt01_unifromDistr(g);
}


template<> inline
void WithSTL<double>::
prepare_uniform_real01()
{
    for (auto& o : rU01)
        o = dbl01_unifromDistr(g);
}


// Returns a random number with uniform distribution over [0,1).
template<std::floating_point real>
real WithSTL<real>::
r01u()
{
    auto counter = rU01_ind + 1;  // local because of rU01_ind volatility
    if (counter >= bufferSize) {
        prepare_uniform_real01();
        rU01_ind = 0;
    }
    else rU01_ind = counter;

    return rU01[rU01_ind];
}


// Returns int in the range [0, max-1]
template<std::floating_point real>
constexpr
int WithSTL<real>::
uniform0(const int max)
{
    ASSERT(max > 0, "uniform0 requires max > 0");

    auto ir {static_cast<int>(r01u() * max)};

    while (ir >= max)
        ir = static_cast<int>(r01u() * max);

    return ir;
}


// Returns uint in the range [0, max-1].
template<std::floating_point real>
constexpr
uint WithSTL<real>::
uniform0( const uint max )
{
    ASSERT(max > 0, "uniform0 requires max > 0");

    auto ir = static_cast<uint>(r01u() * max);

    while (ir >= max)
        ir = static_cast<uint>(r01u() * max);

    return ir;
}


// Returns std::size_t in the range [0, max-1].
template<std::floating_point real>
constexpr
std::size_t WithSTL<real>::
uniform0(const std::size_t max)
{
    ASSERT(max > 0, "uniform0 requires max > 0");

    auto ir = static_cast<std::size_t>(r01u() * max);

    while (ir >= max)
        ir = static_cast<std::size_t>(r01u() * max);

    return ir;
}


// Returns outT in the range [1, max].
template<std::floating_point real>
template<std::unsigned_integral intT>
constexpr
intT WithSTL<real>::
uniform1( const intT max )
{

    ASSERT(max > 0, "uniform1 requires max > 0 ");

    return uniform0(max) + 1;
}

template<std::floating_point real>
constexpr
real WithSTL<real>::
uniform0(const real max)
{
    ASSERT(max > 0, "uniform0 requires max > 0 ");

    auto ir = r01u() * max;

    while (ir >= max)
        ir = r01u() * max;

    return ir;
}


// Returns a point uinformly distributed within solidAngle on a shpere.
template<std::floating_point real>
constexpr
auto WithSTL<real>::
uniform_direction( const real solidAngle ) noexcept -> A3r
{
    do {
        // Inclination of the candidate point on a sphere surface.
        const auto ph = pi * (r01u() - real(0.5));
        if (ph > solidAngle) continue;

        // Azimuth of the candidate point on a sphere surface.
        auto th = twopi * (r01u() - real(0.5));

        // If upper altitude paralleles are shorter, reject some
        // points positioned outside their length:
        if (std::abs(th) < pi * std::cos(ph)) {
            // Spread the remaining points over the length of the parallele:
            th /= std::cos(ph);

            return { std::cos(ph) * std::cos(th),
                     std::cos(ph) * std::sin(th),
                     std::sin(ph) };
        }
    } while (true);

    return {};
}


// Returns a point uinformly distributed on a shpere within inclMinMax
// and azimMinMax. Inclination is limited by inclMinMax [0, pi) around +z
// axis direction (i.e. phPole == 0). Azimuth is limited by azimMinMax [-pi, pi)
//  around +x axis direction  (i.e. th == 0).
template<std::floating_point real>
constexpr
auto WithSTL<real>::
uniform_direction(
    const A2r& inclMinMax,
    const A2r& azimMinMax,
    const bool azimSymmetric,
    real& phPole,
    real& th
) noexcept -> A3r
{
    while (true) {
        // Inclination of the candidate point on a sphere surface:
        const auto ph = pi * r01u() - halfpi;
        if (ph >  halfpi - inclMinMax[0] ||
            ph <= halfpi - inclMinMax[1]) continue;

        // Azimuth of the candidate point on a sphere surface:
        th = twopi * r01u() - pi;    // [-pi, pi)

        // If upper altitude paralleles are shorter, reject some points
        // positioned outside their length:
        if (std::abs(th) < pi * std::cos(ph)) {
            // 'th' is spread of the remaining points over the length of the parallele.
            th /= std::cos(ph);
            bool reject = th <  azimMinMax[0] ||
                          th >= azimMinMax[1];
            if (azimSymmetric)
                reject = reject &&
                        (th >= -pi + azimMinMax[1] &&
                         th <   pi + azimMinMax[0]);
            if (reject) continue;

            phPole = halfpi - ph;    // relative to the pole

            return { std::cos(ph) * std::cos(th),
                     std::cos(ph) * std::sin(th),
                     std::sin(ph) };
        }
    }

    return A3r {0, 0, 0};
}


// Trigonometric method: returns a point uinformly distributed within
// solidAngle on a shpere of radius r.
// 'solidAngle' surface patch where the random point may belong to; set it
//      to pi for the whole surface.
// 'poleDir' [0,1,2] is the direction of the solidAngle axis.
template<std::floating_point real>
auto WithSTL<real>::
uniform_on_sphere(
    const real solidAngle,
    const real r,
    const int poleDir
) noexcept -> A3r
{
    ASSERT(solidAngle > 0 && solidAngle <= pi, "incorrect solidAngle");
    ASSERT(r > 0, "incorrect r");
    ASSERT(poleDir >= 0 && poleDir <= 2, "incorrect poleDir");

    while (true) {
        const auto u = 2 * r01u() - 1;
        if (u < std::cos(solidAngle))
            // reject the points outside the cap set by solidAngle,
            // i.e one with hieght h = r * (1 - std::cos(solidAngle))
            continue;

        const auto v = std::sqrt(1 - u*u);
        // Inclination of the candidate point on a sphere surface:
        const auto ph = twopi * r01u();

        const auto vcp = v * std::cos(ph);
        const auto vsp = v * std::sin(ph);

        return poleDir == 2
               ? A3r(vcp, vsp, u) * r
               : (poleDir == 0
                  ? A3r(u,   vcp, vsp) * r
                  : A3r(vcp, u,   vsp) * r);
    }
}


// Trigonometric method: returns a point uinformly distributed within solidAngle
// on a shperoid of dimensions r;
// 'solidAngle' surface patch where the random point may belong to;
// set it to pi for the whole surface.
// 'r' is spheroid dimensions: r[0] = a = b, r[1] = c
// 'poleDir' [0,1,2] is the direction of the solidAngle axis
// 'bias' [-1,0,1]: -1 to poles; 1 to equator, 0 none
template<std::floating_point real>
auto WithSTL<real>::
uniform_on_spheriod(
    const real solidAngle,
    const A2r& r,
    const int poleDir,
    const int bias,
    const real biasPar
) noexcept -> A3r
{
    // Check that the pole direction is along one of the major axes: 0, 1, 2:
    ASSERT(solidAngle > 0 && solidAngle <= pi, "incorrect solidAngle");
    ASSERT(r > 0, "incorrect r");
    ASSERT(poleDir >= 0 && poleDir <= 2, "incorrect poleDir");
    ASSERT(!bias || bias == -1 || bias == 1, "incorrect bias");

    while (true) {
        // Inclination of the candidate point on a sphere surface:
        const auto phi = twopi * r01u();

        const auto u = 2 * r01u() - 1;
        const auto v = std::sqrt(1 - u*u);

        const auto x = r[0] * v * std::cos(phi);
        const auto y = r[0] * v * std::sin(phi);
        const auto z = r[1] * u;

        // Reject the points outside the cap set by solidAngle,
        // i.e one with hieght h = r * (1 - std::cos(solidAngle)):
        if (const auto sathr = std::cos(solidAngle);
            (poleDir == 2 && z < r[1] * sathr) ||
            (poleDir == 1 && y < r[0] * sathr) ||
            (poleDir == 0 && x < r[0] * sathr))
            continue;

        const auto s0 = std::sqrt(
            (x*x + y*y) / r[0]*r[0]*r[0]*r[0] +
                    z*z / r[1]*r[1]*r[1]*r[1]
        );
         // Acceptance threshold for prolate vs. oblate case:
        if (const auto s = s0 * (r[0] < r[1] ? r[0] : r[1]);
            s < r01u())
            continue;

        const A3r res {x, y, z};

        if (bias == -1)  // Bias towards poles.
            if (std::acos(std::abs(z) / res.norm()) >
                gaussian_number_constrained(0, biasPar, 0, halfpi))
                continue;

        if (bias == 1) // Bias towards equator.
            if (std::acos(std::sqrt(x*x + y*y) / res.norm()) >
                 gaussian_number_constrained(0, biasPar, 0, halfpi))
                continue;

        // No bias.
        return res;
    }
}


template<std::floating_point real>
constexpr
auto WithSTL<real>::
uniform_on_ellipse(
    const A2r& r    ///< ellipse dimensions: r = {a, b}
) noexcept -> A2r
{
    // Inclination of the candidate point:
    const auto phi = twopi * r01u();

    return { r[0] * std::cos(phi),
             r[1] * std::sin(phi) };

}


template<std::floating_point real>
constexpr
auto WithSTL<real>::
uniform_in_ellipse(
    const A2r& r    ///< ellipse dimensions: r = {a, b}
) noexcept -> A2r
{
    const auto rho = r01u();
    // Inclination of the candidate point:
    const auto phi = twopi * r01u();

    // (x, y) is a random point inside a circle of radius 1
    const auto x = std::sqrt(rho) * std::cos(phi);
    const auto y = std::sqrt(rho) * std::sin(phi);

    return {x * r[0],
            y * r[1]};
}
/*
template<std::floating_point real>
constexpr
auto WithSTL<real>::
uniform_in_ellipse( const A2<real>& r1,
                    const A2<real>& r0,
                    const A2<real>& shift ) noexcept -> A2r
{
    do
        if (const auto p = uniform_in_ellipse(r1);
            p[0] >= shift[0] + r0[0] ||
            p[1] >= shift[1] + r0[1])
            return p;
    while (true);
}
*/


template<std::floating_point real>
constexpr
real WithSTL<real>::
exponential_number(
    const real mi
) noexcept
{
    ASSERT(mi >= 0, "exponentialNum requires mi >= 0");

    return - mi * std::log(r01u());
}


// Returns a poissonian distributed deviate with mean mi.
template<std::floating_point real>
uint WithSTL<real>::
poisson_number(
    const real lambda
) noexcept
{
    if (lambda <= 0)
        return 0;
    std::poisson_distribution<uint> poissonDistr(lambda);

    return poissonDistr(g);
}


// Returns a binomially distributed deviate.
template<std::floating_point real>
uint WithSTL<real>::
binomial_number(
    const uint n,
    const real p
)  noexcept
{
    std::binomial_distribution<> bin_d(n, p);

    return bin_d(g);
}


// returns a multinomially distributed deviate
template<std::floating_point real>
std::vector<uint> WithSTL<real>::
multinomial_number(
    const uint n,
    const uint k
)  noexcept
{
    std::vector<real> p (k - 1, real(1) / k);

    return multinomial_number(n, p);
}


// Distributes n into p.size()+1 slots with probabilities
// p[0], p[1], ..., p.back(), 1 - sum(p)
template<std::floating_point real>
std::vector<uint> WithSTL<real>::
multinomial_number(
    const uint n,
    std::vector<real> p   // by value
) noexcept
{
    std::vector<uint> res(p.size()+1);
    uint rem {n};
    for (std::size_t i=0; i<p.size(); i++) {
        std::binomial_distribution<> bin_d(rem, p[i]);
        res[i] = bin_d(g);
        rem -= res[i];
        for (std::size_t j=i+1; j<p.size(); j++)
            p[j] /= p[i];
    }
    res.back() = rem;

    return res;
}


// Weibull distribution
template<std::floating_point real>
constexpr
real WithSTL<real>::
weibull_number(
    const real lambda,
    const real k
)  noexcept
{
    return lambda * std::pow((-std::log(1 - r01u())),
                             real(1) / k);
}


// Logistic distribution.
template<std::floating_point real>
constexpr
real WithSTL<real>::
logistic_number(
    const real mi,
    const real s
)  noexcept
{
    const auto u = r01u();
    return mi + s * (std::log(u) - std::log(1 - u));
}


// Returns a normally distributed deviate N(mi, sigma^2).
template<std::floating_point real>
constexpr
real WithSTL<real>::
gaussian_number(
    const real mi,
    const real sigma
) noexcept
{
    return sigma * normalDistr(g) + mi;
}


template<std::floating_point real>
constexpr
real WithSTL<real>::
gaussian_number_constrained(
    const real mi,
    const real sigma,
    const real cmin,
    const real cmax
) noexcept
{
    ASSERT(cmin < cmax);

    real res;
    do res = gaussian_number(mi, sigma);
    while (res < cmin || res > cmax);

    return res;
}

}  // namespace mosaicsc::utils::random

#endif  // MOSAICSC_UTILS_RANDOM_WITH_STL_H
