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

#ifndef MOSAICSC_POTTS_H
#define MOSAICSC_POTTS_H

#include "mosaicsc/definitions.h"
#include "mosaicsc/parameters.h"
#include "mosaicsc/sc.h"
#include "mosaicsc/io.h"

#include "utils/misc.h"
#include "utils/msgr.h"

#include <array>
#include <iostream>
#include <fstream>
#include <memory>
#include <mutex>
#include <string>
#include <vector>

namespace mosaicsc {

struct Potts {

    friend IO;

    /// The only constructor.
    explicit Potts(
        const Parameters&,
        std::mutex&,
        const std::string&,
        szt,
        std::unique_ptr<RandFactory>&
    ) noexcept;

    void run() noexcept;

private:

    static constexpr real kB {static_cast<real>(1.38064852e-23)};  ///< J/K
    static constexpr szt  screenWidth {70};  ///< Assumed screen width.
    static constexpr szt  numRows {5};       ///< Number of rows in the lattice.

    /// Lattice row indexes for each molecule type.
    const std::array<std::vector<uint>, BaseC::NT> typeRows {{
        {}, {0,4}, {0,4}, {2}, {1,3}
    }};
    /// Molecule types having access to each of the five lattice roes.
    const std::array<std::vector<uint>, numRows> rowTypes {{
        {1,2}, {4}, {3}, {4}, {1,2}
    }};

    const Parameters& sps;      ///< Simulation arameters.
    const std::string runname;  ///< Run index as a string.
    const szt         ithread;  ///< Index of CpU thread.

    std::mutex& mtx;  ///< Thread-local reference to mutex.

    ///< Thread-local reference to random factory..
    std::unique_ptr<RandFactory>& rf;

    IO io;  ///< Input/Output.

    std::vector<SC<BaseC>> scs;    ///< Aggregates.
    vec2szt                mskSC;  ///< Mask of aggregates over the grid.

    std::array<vec2uint, BaseC::NT> ocPos, emPos;

    vec2szt    tp;    ///< Grid node complex types.
    vec2ort    di;    ///< Grid node orientations.
    static szt L[2];  ///< Grid dimensions: nrows, ncols.
    static szt V;     ///< Grid area.

    std::vector<real> cE;  ///< Energies per complex.
    vec2real          gE;  ///< Energies per lattice vertexes.

    /// 'cconn' averaged over complexes: is indexed by C type and slot.
    std::array<std::vector<real>, BaseC::NT> conNbT;
    /// 'cconn' averaged over both complexes and slots: is indexed by C type.
    std::array<real, BaseC::NT> conCT;

    szt it;  ///< Iteration index.

    szt initialize_lattices() noexcept;

    void choose_node_pair(
        uint&,
        uint&,
        uint&,
        uint&
    ) const noexcept;

    real hamming_dist(
        const szt,
        const Ornt::value_t,
        const szt,
        const szt
    ) const noexcept;

    void parce(
        const szt,
        const szt,
        SC<BaseC>&
    ) noexcept;

    A2<real[BaseC::NT]> massvarSC() noexcept;

    constexpr szt get_nbtmax(const szt t) const noexcept;

    void set_connectivity() noexcept;

    void eTot() noexcept;

    void setSCs() noexcept;

    void set_gE() noexcept;
};

}  // namespace mosaicsc

#endif // MOSAICSC_POTTS_H
