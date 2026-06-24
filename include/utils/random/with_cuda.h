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
 * \file with_cuda.h
 * \brief Contains class random::Cuda.
 * \author Valerii Sukhorukov
 */

#ifndef MOSAICSC_UTILS_RANDOM_WITH_CUDA_H
#define MOSAICSC_UTILS_RANDOM_WITH_CUDA_H

#include "utils/misc.h"
#include "core.h"

#include <cuda_runtime.h>
#include <curand.h>

/// Pseugo-random number generation.
namespace mosaicsc::utils::random {

/// Random number factory based on Cuda rng library.
/// \tparam real Floating point type.
template<std::floating_point real>
struct Cuda: public Core<real> {

    using Real = real;

    /**
     * Constructor setting the seed uncoupled from run index.
     * \param seed Random number generator seed.
     * \param runName Human-readable run index.
     * \param msgr Output message processor.
     */
    explicit Cuda(
        unsigned seed,
        const std::string& runName,
        Msgr& msgr
    );

    /**
     * Constructor setting the seed depending on run index.
     * \param seedFname Name of the file contining seeds.
     * \param runIndex Run index.
     * \param msgr Output message processor.
     */
    explicit Cuda(
        unsigned runIndex,
        Msgr& msgr
    );

    // The rule of five is triggered by the destructor, the defaults suffice:
    Cuda(const Cuda&) = delete;             ///< Copy constructor.
    Cuda& operator=(const Cuda&) = delete;  ///< Copy assignment.
    Cuda(Cuda&&) = delete;                  ///< Move constructor.
    Cuda& operator=(Cuda&&) = delete;       ///< Move assignment.
    ~Cuda();                                ///< Destructor.

    /// Initializes CUDA rng machinery.
    void initialize_CUDA_rng();

    /// A pseudo-random number with uniform distribution over [0,1).
    real r01u();

    /**
     * A pseudo-random unsigned int from the range [0, max-1].
     * \param max Max boundary of the sampled range.
     */
    uint uniform0(const uint max);

private:

    using Core<real>::bufferSize;

    real* rU01;    ///< Buffer array for storing random numbers (host).
    real* d_Rand;  ///< Buffer array for storing random numbers (device).

    int rU01_ind;   ///< Index of the current random number in \a rU01.

    std::mt19937      gCPU; ///< Random number generator using CPU.
    curandGenerator_t gGPU; ///< Random number generator using GPU.

    /// Populates buffer array with a new butch of random numbers over (0,1].
    void prepare_uniform_real01();

    /// Checks CUDA errors.
    void checkCudaErrors(const curandStatus_t& e);

    /// Checks CUDA errors.
    void checkCudaErrors(const cudaError_t& e);
};


// IMPLEMENTATION ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

template<std::floating_point real>
Cuda<real>::
Cuda(const unsigned seed,
     const std::string& runName,
     Msgr& msgr)
    : Core<real> {seed, runName, msgr}
{
    gCPU.seed(this->seed);

    initialize_CUDA_rng();

    rU01_ind = -1;
    prepare_uniform_real01();
}


template<std::floating_point real>
Cuda<real>::
Cuda(const unsigned runInd,
     Msgr& msgr)
    : Core<real> {runInd, msgr}
{
    gCPU.seed(this->seed);

    initialize_CUDA_rng();

    rU01_ind = -1;
    prepare_uniform_real01();
}


template<std::floating_point real>
Cuda<real>::
~Cuda()
{
    checkCudaErrors(curandDestroyGenerator(gGPU));
    checkCudaErrors(cudaFree(d_Rand));
    free(rU01);
}


template<std::floating_point real>
void Cuda<real>::
initialize_CUDA_rng()
{
    checkCudaErrors(curandCreateGenerator(&gGPU, CURAND_RNG_PSEUDO_MTGP32));
    checkCudaErrors(curandSetPseudoRandomGeneratorSeed(gGPU, this->seed));
    checkCudaErrors(cudaMalloc((void**)&d_Rand, bufferSize * sizeof(real)));
    rU01 = (real*)malloc(bufferSize * sizeof(real));
}


// Generates real random numbers with uniform distribution over (0,1]   (!!!)
template<> inline
void Cuda<float>::
prepare_uniform_real01()
{
    checkCudaErrors(curandGenerateUniform(gGPU, (float*) d_Rand, bufferSize));
    // synchronizes the GPU threads before copy
    checkCudaErrors(cudaMemcpy(rU01, d_Rand, bufferSize * sizeof(float),
                    cudaMemcpyDeviceToHost));
}


template<> inline
void Cuda<double>::
prepare_uniform_real01()
{
    checkCudaErrors(curandGenerateUniformDouble(gGPU, (double*) d_Rand,
                                                bufferSize));
    // synchronizes the GPU threads before copy
    checkCudaErrors(cudaMemcpy(rU01, d_Rand, bufferSize * sizeof(double),
                               cudaMemcpyDeviceToHost));
}


// returns int in the range [0,max-1]
template<std::floating_point real>
uint Cuda<real>::
uniform0(const uint max)
{
    auto ir {static_cast<uint>(r01u() * max)};
    while (ir >= max)
        ir = static_cast<uint>(r01u() * max);

    return ir;
}


// returns a random number with uniform distribution over [0,1)
template<std::floating_point real>
real Cuda<real>::r01u()
{
    if (++rU01_ind == bufferSize) {
        prepare_uniform_real01();
        rU01_ind = 0;
    }
    return rU01[rU01_ind];
}


template<std::floating_point real>
void Cuda<real>::
checkCudaErrors(const curandStatus_t& err)
{
    if (err != CURAND_STATUS_SUCCESS)
        throw Exception("CURAND error: " + std::to_string(err), &this->msgr);
}


template<std::floating_point real>
void Cuda<real>::
checkCudaErrors(const cudaError_t& err)
{
    if (err != cudaSuccess)
        throw Exception("CUDA error: " + std::to_string(err), &this->msgr);
}


}  // namespace mosaicsc::utils::random

#endif // MOSAICSC_UTILS_RANDOM_WITH_CUDA_H
