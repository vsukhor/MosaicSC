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
 * \file threads.h
 * \brief Contains class Threads.
 * \author Valerii Sukhorukov
 */

#ifndef MOSAICSC_UTILS_THREADS_H
#define MOSAICSC_UTILS_THREADS_H

#include "utils/constants.h"
#include "utils/msgr.h"

#include <iostream>
#include <thread>
#include <vector>

/// Provies distribution of load among threads.
namespace mosaicsc::utils::threads {

/**
 * Enumerates basic load sharing modes.
 * \details Defines three modes of load distribution between threads.
 */
enum class Weights {
    CircleCenter,   ///< Circle-shaped load distribution.
    Equal,          ///< Uniform load sharing.
    TriangleDecr    ///< Right triangle-shaped distribution
};


/**
 * \class Threads
 * Implements weighted thread loads.
 * \details Implements convenience class for handling a collection
 * of std::thread objects.
 * \tparam W Type of relative load distribution.
 */
template<Weights W>
struct Threads {

    using szt = std::size_t;

    const szt        num;     ///< Number of threads.
    std::vector<szt> chs;     ///< Per-thread amounts of relative load.
    std::vector<szt> i1, i2;  ///< Range borders.

    std::vector<std::thread> thr;  ///< Container holding the threads.

    /**
     * Constructor.
     * \details Creates threads based on a set of work units.
     * \param offset Offset from the start of work unit container.
     * \param size Size of the work unit container shared among the threads.
     * \param omittedBoundaries Boundsary work units to discard.
     * \param nThreads Thread number.
     */
    explicit Threads(
        szt offset,
        szt size,
        unsigned long omittedBoundaries,
        unsigned long nThreads
    );

    /**
     * Joins the threads.
     */
    void join();

    // Various weights for relative thread loads
    /**
     * Sets weighting factors according to \a Weights::Equal.
     * \param w Total number of work units.
     * \param rest Number of work units remaining after the optimal distribution.
     */
    void set_chunks_equal(szt w, szt rest);

    /**
     * Sets weighting factors according to \a Weights::CircleCenter.
     * \param w Total number of work units.
     * \param rest Number of work units remaining after the optimal distribution.
     */
    void set_chunks_circular(szt w, szt rest);
    /**
     * Sets weighting factors according to \a Weights::TriangleDecr.
     * \param size Total number of work units.
     */
    void set_chunks_triangleDecr(szt size);

    /**
     * Prints work unit borders for particular threads.
     * \param withCout Specifies if printing to cout.
     * \param msgr \a Msgr used for the output.
     */
    void print_regions(bool withCout, Msgr& msgr);
};


// IMPLEMENTATION ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

template<Weights W>
Threads<W>::
Threads( const szt offset,
         const szt size,
         const unsigned long omittedBoundaries,
         const unsigned long nThreads)
    : num {nThreads}
{
    if (szt threadsSupported {std::thread::hardware_concurrency()};
        nThreads > threadsSupported)
        throw std::runtime_error(
            "Ordered number of threads " + std::to_string(nThreads) +
            " exceeds the CPU concurrency: " + std::to_string(threadsSupported));
    if (nThreads < 1)
        throw std::runtime_error(
            "Error in Threads: nThreads ordered " + std::to_string(nThreads) +
            "is not supprted ");
    if (nThreads > 12 && W == Weights::CircleCenter)
        throw std::runtime_error(
            "Error in Threads: for Circular weights only up to max 12 "
            "threads are supported. nThreads ordered: " +
            std::to_string(nThreads));

    szt w {size - 2*omittedBoundaries};
    const szt rest {w % num};
    w -= rest;

    chs.resize(num);
    if constexpr (     W == Weights::Equal)
        set_chunks_equal(w, rest);
    else if constexpr (W == Weights::CircleCenter)
        set_chunks_circular(w, rest);    // arc sector area: A = r*r*phi/2
    else if constexpr (W == Weights::TriangleDecr)
        set_chunks_triangleDecr(size - 2*omittedBoundaries);
    else
        throw std::runtime_error("Error in Threads: Weight type is not defined");

    i1.resize(num);
    i2.resize(num);
    i1[0] = offset + omittedBoundaries;
    i2[0] = i1[0] + chs[0];
    for (szt ith=1; ith<num; ith++) {
        i1[ith] = i1[ith-1] + chs[ith-1];
        i2[ith] = i2[ith-1] + chs[ith];
    }
    thr.resize(num);
}

template<Weights W>
void Threads<W>::
join()
{
    for (auto& o : thr)
        o.join();
}

// Various chunk sizes for flexible thread loads
template<Weights W>
void Threads<W>::
set_chunks_equal(const szt w,
                 const szt rest)
{
    for (szt ith=0; ith<num; ith++) {
        chs[ith] = w/num;
        if (ith < rest)
            chs[ith]++;
    }
}

template<Weights W>
void Threads<W>::
set_chunks_circular(const szt w,
                    const szt rest)
{
// The coefficients are lengths of circle sagitta h = rnd * (1 - cos(phi/2)),
// where phi is the central angle (in radians)  defining the circle segment.
// The condition is the equality of the segment areas
//     A = rnd^2 * (phi - sin(phi)) / 2,
// which reflect the thread loads.
// The problem has no explicit solution but can be solved numerically.
// E.g. in matlab:
//     % Let be given: 'k': an index in chs[k]
//     %                'num': the number of threads
//     % Then, to find 'h':
//     syms h;  vpasolve(2*pi*k/num == 2*acos(1-h) - sin(2*acos(1-h)), h) / 2
//
    switch (num) {
    case 1 :
        chs[0] = w;
        break;

    case 2 :
        chs[0] = szt(0.5000000 * w);
        chs[1] = w - chs[0];
        break;

    case 3 :
        chs[0] = szt(0.3675340 * w);
        chs[1] = szt(0.6324660 * w) - chs[0];
        chs[2] =                 w - chs[1] - chs[0];
        break;

    case 4 :
        chs[0] = szt(0.2980136 * w);
        chs[1] = szt(0.5000000 * w) - chs[0];
        chs[2] = szt(0.7019864 * w) - chs[1] - chs[0];
        chs[3] =                  w - chs[2] - chs[1] - chs[0];
        break;

    case 5 :
        chs[0] = szt(0.2540691 * w);
        chs[1] = szt(0.4211319 * w) - chs[0];
        chs[2] = szt(0.5788681 * w) - chs[1] - chs[0];
        chs[3] = szt(0.7459309 * w) - chs[2] - chs[1] - chs[0];
        chs[4] =                  w - chs[3] - chs[2] - chs[1] - chs[0];
        break;

    case 6 :
        chs[0] = szt(0.2233536 * w);
        chs[1] = szt(0.3675340 * w) - chs[0];
        chs[2] = szt(0.5000000 * w) - chs[1] - chs[0];
        chs[3] = szt(0.6324660 * w) - chs[2] - chs[1] - chs[0];
        chs[4] = szt(0.7766464 * w) - chs[3] - chs[2] - chs[1] - chs[0];
        chs[5] =                 w - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        break;

    case 7 :
        chs[0] = szt(0.2004697 * w);
        chs[1] = szt(0.3282611 * w) - chs[0];
        chs[2] = szt(0.4437815 * w) - chs[1] - chs[0];
        chs[3] = szt(0.5562185 * w) - chs[2] - chs[1] - chs[0];
        chs[4] = szt(0.6717389 * w) - chs[3] - chs[2] - chs[1] - chs[0];
        chs[5] = szt(0.7995303 * w) - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[6] =                  w - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        break;

    case 8 :
        chs[0] = szt(0.1826477 * w);
        chs[1] = szt(0.2980136 * w) - chs[0];
        chs[2] = szt(0.4011780 * w) - chs[1] - chs[0];
        chs[3] = szt(0.5000000 * w) - chs[2] - chs[1] - chs[0];
        chs[4] = szt(0.5988220 * w) - chs[3] - chs[2] - chs[1] - chs[0];
        chs[5] = szt(0.7019864 * w) - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[6] = szt(0.8173523 * w) - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[7] =                  w - chs[6] - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        break;

    case 9 :
        chs[0] = szt(0.16830735 * w);
        chs[1] = szt(0.27386929 * w) - chs[0];
        chs[2] = szt(0.36753396 * w) - chs[1] - chs[0];
        chs[3] = szt(0.45631111 * w) - chs[2] - chs[1] - chs[0];
        chs[4] = szt(0.54368889 * w) - chs[3] - chs[2] - chs[1] - chs[0];
        chs[5] = szt(0.63246604 * w) - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[6] = szt(0.72613071 * w) - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[7] = szt(0.83169265 * w) - chs[6] - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[8] =                   w - chs[7] - chs[6] - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        break;

    case 10 :
        chs[0] = szt(0.15647559 * w);
        chs[1] = szt(0.25406908 * w) - chs[0];
        chs[2] = szt(0.34015425 * w) - chs[1] - chs[0];
        chs[3] = szt(0.42113190 * w) - chs[2] - chs[1] - chs[0];
        chs[4] = szt(0.50000000 * w) - chs[3] - chs[2] - chs[1] - chs[0];
        chs[5] = szt(0.57886810 * w) - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[6] = szt(0.65984575 * w) - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[7] = szt(0.74593092 * w) - chs[6] - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[8] = szt(0.84352441 * w) - chs[7] - chs[6] - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[9] =                   w - chs[8] - chs[7] - chs[6] - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        break;

    case 11 :
        chs[0]  = szt(0.14651773 * w);
        chs[1]  = szt(0.23748417 * w) - chs[0];
        chs[2]  = szt(0.31735290 * w) - chs[1] - chs[0];
        chs[3]  = szt(0.39205578 * w) - chs[2] - chs[1] - chs[0];
        chs[4]  = szt(0.46426965 * w) - chs[3] - chs[2] - chs[1] - chs[0];
        chs[5]  = szt(0.53573035 * w) - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[6]  = szt(0.60794422 * w) - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[7]  = szt(0.68264710 * w) - chs[6] - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[8]  = szt(0.76251583 * w) - chs[7] - chs[6] - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[9]  = szt(0.85348227 * w) - chs[8] - chs[7] - chs[6] - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[10] =                   w - chs[9] - chs[8] - chs[7] - chs[6] - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        break;

    case 12 :
        chs[0]  = szt(0.13800066 * w);
        chs[1]  = szt(0.22335364 * w) - chs[0];
        chs[2]  = szt(0.29801362 * w) - chs[1] - chs[0];
        chs[3]  = szt(0.36753396 * w) - chs[2] - chs[1] - chs[0];
        chs[4]  = szt(0.43436113 * w) - chs[3] - chs[2] - chs[1] - chs[0];
        chs[5]  = szt(0.50000000 * w) - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[6]  = szt(0.56563887 * w) - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[7]  = szt(0.63246604 * w) - chs[6] - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[8]  = szt(0.70198638 * w) - chs[7] - chs[6] - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[9]  = szt(0.77664636 * w) - chs[8] - chs[7] - chs[6] - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[10] = szt(0.86199934 * w) - chs[9] - chs[8] - chs[7] - chs[6] - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        chs[11] =                  w - chs[10] - chs[9] - chs[8] - chs[7] - chs[6] - chs[5] - chs[4] - chs[3] - chs[2] - chs[1] - chs[0];
        break;
    }

    for (szt ith=0; ith<rest; ith++)
        chs[ith]++;
}

template<Weights W>
void Threads<W>::
set_chunks_triangleDecr( const szt size )
{
    szt w {};
    for (szt i=size; i>0; i--)
        w += i;
    const szt e = w/num;
    const szt rest = w%num;

    std::vector<szt> dchs(num, e);
    for (szt i=0; i<rest; i++)
        dchs[i]++;

    szt n(size);
    for (szt ith=0; ith<num-1; ith++) {
        chs[ith] = 0;
        szt c {};
        do {
            chs[ith]++;
            c += n--;
        } while (c < dchs[ith]);
    }
    chs.back() = n;
}

template<Weights W>
void Threads<W>::
print_regions( const bool withCout,
               Msgr& msgr )
{
    if (withCout && msgr.so) {
        *msgr.so << " Thread borders: ";
        for (szt ith=0; ith<num; ith++)
            *msgr.so << i1[ith] << " to "
                     << i2[ith]-1 << "; ";
        *msgr.so << std::endl;
    }
    if (msgr.sl) {
        *msgr.sl << " Thread borders: ";
        for (szt ith=0; ith<num; ith++)
            *msgr.sl << i1[ith] << " to "
                     << i2[ith]-1 << "; ";
        *msgr.sl << std::endl;
    }
}


}  // namespace mosaicsc::utils::threads

#endif  // MOSAICSC_UTILS_THREADS_H
