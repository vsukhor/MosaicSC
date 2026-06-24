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
 * \file core.h
 * \brief Contains class Random::Core.
 * \author Valerii Sukhorukov
 */

#ifndef MOSAICSC_UTILS_RANDOM_CORE_H
#define MOSAICSC_UTILS_RANDOM_CORE_H

//#include "utils/misc.h"
#include "utils/constants.h"
#include "utils/msgr.h"

#include <concepts>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <random>
#include <type_traits>
#include <vector>

/// Pseugo-random number generation.
namespace mosaicsc::utils::random {

/**
 * Base class for random number factories.
 * \tparam real Floating point type.
 */
template<std::floating_point real>
struct Core
{
    using Real = real;

    /// Size of the buffer for storing random numbers.
    static constexpr int bufferSize {1'000'000};

    /// Master seed.
    static constexpr int mainSeed {1'234'567'890};

protected:  // Data

    unsigned seed {undefined<unsigned>};  ///< The seed.

    Msgr& msgr;  ///< Output message processor.

public:  // Methods

    /**
     * Produces \p num_saved_seeds seeds and stores them to a file.
     * \note This is only done whenever the working directory does not already
     * have such a file.
     * \param runInd Run index to choose a seed.
     */
    static uint make_seed(
        uint runInd
    ) noexcept;

    /// Seed getter.
    auto get_seed() { return seed; }

protected:

    /**
     * Constructor setting the seed uncoupled from run index.
     * \param seed    Seed to use.
     * \param runName Human-readable run index.
     * \param msgr    Output message processor.
     */
    explicit Core(
        unsigned seed,
        const std::string& runName,
        Msgr& msgr
    ) noexcept;

    /**
     * Constructor setting the seed depending on run index.
     * \param runInd Run index to choose a seed.
     * \param msgr   Output message processor.
     */
    explicit Core(
        unsigned runInd,
        Msgr& msgr
    ) noexcept;
};


// IMPLEMENTATION ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

template<std::floating_point real>
Core<real>::
Core(
    const unsigned seed,
    const std::string& runName,
    Msgr& msgr
) noexcept
    : seed {seed}
    , msgr {msgr}
{
    msgr.print("RUN = ", runName);
    msgr.print("SEED = ", seed);
}


template<std::floating_point real>
Core<real>::
Core(
    const unsigned runInd,
    Msgr& msgr
) noexcept
    : seed {make_seed(runInd)}
    , msgr {msgr}
{
    msgr.print("RUN = ", runInd);
    msgr.print("SEED = ", seed);
}


template<std::floating_point real>
uint Core<real>::
make_seed(const uint runInd) noexcept
{
    std::mt19937 g {mainSeed};

    constexpr int sd1 = 100'000'000;
    constexpr int sd2 = 2'100'000'000;

    std::uniform_int_distribution<uint> seed_d(sd1, sd2);
    uint s {};
    for (uint i=0; i<runInd; i++)
        s = seed_d(g);

    return s;
}

}  // namespace mosaicsc::utils::random

#endif  // MOSAICSC_UTILS_RANDOM_CORE_H
