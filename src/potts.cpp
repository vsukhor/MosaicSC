/* ==============================================================================
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

============================================================================== */

#include <iostream>
#include <fstream>

#include "utils/common/misc.h"
#include "utils/common/msgr.h"

#include "potts.h"

namespace MosaicSC {

using namespace Utils::Common;
    
Potts::
Potts( const Parameters& sps,
       std::mutex& mtx,
       const std::string& runname,
       const szt ithread,
       std::unique_ptr<RandFactory>& rf,
       Msgr& msgr ) noexcept
    : sps {sps}
    , runname {runname}
    , ithread {ithread}
    , msgr {msgr}
    , mtx {mtx}
    , rf {rf}
    , io {this}
{
    mtx.lock();
        // max number of row nodes occupied:
        const auto maxn = std::max({
                szt((3*sps.Ntot[0] + sps.Ntot[1]) / 2) + 1,        // row 1 or 4
                sps.Ntot[2] + szt(sps.Ntot[3] / 2) + 1});        // row 2
        // lattice dimensions:
        L[0] = numRows;
        L[1] = static_cast<szt>(sps.dilution * maxn);
        msgr.print("Lattice dimensions " + STR(L[0]) + " " + STR(L[1]));
        V = L[0]*L[1];
        
        cE = std::vector<real>(L[0]);        // energies per lattice row
        
        for (szt h=1; h<BaseC::NT; h++)
            conNbT[h].resize(get_nbtmax(h));
        
        // # of empty nodes at lattices available for C1, ..., C4:
        std::vector<szt> nemp_T = { 2*L[1] - sps.Ntot[0] - sps.Ntot[1],   // C1
                                     2*L[1] - sps.Ntot[0] - sps.Ntot[1],   // C2
                                       L[1] - sps.Ntot[2],                    // C3
                                       2*L[1] - sps.Ntot[3] };                // C4
        
        for (szt i = 1; i<BaseC::NT; i++) {
            ocPos[i] = Vec2::make<uint>(sps.Ntot[i-1], 2);
            emPos[i] = Vec2::make<uint>(nemp_T[i-1], 2);
        }

        // create lattice-size masks:
        tp    = Vec2::make<szt>(L[0], L[1]);                // particle types
        di    = Vec2::make<Ornt::T>(L[0], L[1], Ornt::nd);    // particle orientations
        gE    = Vec2::make<real>(L[0], L[1]);                // energies
        mskSC = Vec2::make<szt>(L[0], L[1]);                // aggregation classes
        
        it = sps.resume
           ? io.readin_lattice()
           : initialize_lattices();

    mtx.unlock();
}

szt Potts::
initialize_lattices() noexcept
{
    // occupy corresponding number of lattice nodes with particles;
    // this initializes 'tp' and 'di' without creating the C<> objects themselves:
    auto pos = C<1>::initialize({{0, 0}}, tp, di, L[1]);
    C<2>::initialize(pos, tp, di, L[1]);
    auto pos3 = C<3>::initialize(0, tp, di);
    C<4>::initialize({{1, pos3}}, tp, di, L[1]);

    // initialize convenience matrixes 'ocPos' and 'emPos';
    // 'cOcc' and 'cEmp' are counters of occupied and empty lattice nodes respectively:
    for (uint e=1; e<BaseC::NT; e++) {
        szt cOcc {};
        szt cEmp {};
        for (szt u=0; u<typeRows[e].size(); u++) {
            const auto i = typeRows[e][u];
            for (uint j=0; j<L[1]; j++) {
                if (e == tp[i][j]) {
                    ocPos[e][cOcc][0] = i;
                    ocPos[e][cOcc][1] = j;
                    cOcc++;
                }
                else if (!tp[i][j]) {
                    emPos[e][cEmp][0] = i;
                    emPos[e][cEmp][1] = j;
                    cEmp++;
                }
            }
        }
    }
    return 0;    // it
}

void Potts::
run() noexcept
{
    if (!sps.resume)
        io.output(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0., 0., 0., 0., 0.);

    while (it <= sps.Niter) {
        uint i1, i2, j1, j2;
        choose_node_pair(i1, i2, j1, j2);

        const auto t1old = tp[i1][j1];    const auto d1old = di[i1][j1];
        const auto t2old = tp[i2][j2];    const auto d2old = di[i2][j2];
        if (t1old == t2old) continue;

        const auto t1new = t2old;
//        const auto d1new = (i1 < 2 || t2old == 0 || t2old == 3) ? 0 : 1;
        const auto d1new = (i1 == i2 || t2old == 0 || t2old == 3) ? d2old : Ornt::usd(d2old);

        const auto t2new = t1old;
//        const auto d2new = (i2 < 2 || t1old == 0 || t1old == 3) ? 0 : 1;
        const auto d2new = (i1 == i2 || t1old == 0 || t1old == 3) ? d1old : Ornt::usd(d1old);

        // energies at the original configuration:
        const auto e1old = hamming_dist(t1old, d1old, i1, j1);
        const auto e2old = hamming_dist(t2old, d2old, i2, j2);
        // assume a successful move: swap the particles:
        tp[i1][j1] = t1new;    di[i1][j1] = d1new;
        tp[i2][j2] = t2new;    di[i2][j2] = d2new;
        // calculate the new energies and decide based on the energy difference 
        // between the old and new configurations:
        if (const auto e1new = hamming_dist(t1new, d1new, i1, j1);
            e1new < INF<real>) {
            if (const auto e2new = hamming_dist(t2new, d2new, i2, j2);
                e2new < INF<real>) {
                // Metropolis condition on energy difference:
                if (const auto dE = e1new + e2new - e1old - e2old;
                    dE < zero<real> || rf->r01u() < std::exp(-sps.beta * dE)) {
                    // the move is accepted: increment
                    if (it % sps.logfreq == 0)
                        io.output(0, it, i1, j1, i2, j2,
                                  t1old, d1old, t2old, d2old,
                                  t1new, d1new, t2new, d2new,
                                  e1old, e2old, e1new, e2new, dE);
                    it++;
                }
                else { // the move is rejected: swap the particles back:
                    tp[i1][j1] = t1old;    di[i1][j1] = d1old;
                    tp[i2][j2] = t2old;    di[i2][j2] = d2old;
                }
            }
            else { // the move is rejected: swap the particles back:
                tp[i1][j1] = t1old;    di[i1][j1] = d1old;
                tp[i2][j2] = t2old;    di[i2][j2] = d2old;
            }
        }
        else { // the move is rejected: swap the particles back:
            tp[i1][j1] = t1old;    di[i1][j1] = d1old;
            tp[i2][j2] = t2old;    di[i2][j2] = d2old;
        }
    }
}

inline
void Potts::
choose_node_pair( uint& i1, uint& i2,
                  uint& j1, uint& j2 ) const noexcept
{
    // choose the 1st node among the whole lattice L[0]*L[1]:
    const auto i0 = rf->uniform0(static_cast<uint>(V));
    i1 = i0 / static_cast<uint>(L[1]);           // integer division!
    j1 = i0 - i1 * static_cast<uint>(L[1]);

    // the 2nd node is of the type among nodes on type-specific rows:
    if (const auto t1 = tp[i1][j1];
        t1 > 0) {
        // the 1st node is occupied -> the 2nd node should be empty
        const auto q2 = rf->uniform0(emPos[t1].size());
        i2 = emPos[t1][q2][0];
        j2 = emPos[t1][q2][1];
    }
    else {
        // the 1st node is empty -> the 2nd node should be occupied
        const auto rt = rowTypes[i1];
        if (rt.size() == 1) {
            const auto q2 = rf->uniform0(ocPos[rt[0]].size());
            i2 = ocPos[rt[0]][q2][0];
            j2 = ocPos[rt[0]][q2][1];
        }
        else { // if rt.size() == 2
            const szt s[] = {ocPos[rt[0]].size(), ocPos[rt[1]].size()};
            const auto q2 = rf->uniform0(s[0]+s[1]);
            if (q2 < s[0]) {
                i2 = ocPos[rt[0]][q2][0];
                j2 = ocPos[rt[0]][q2][1];
            }
            else {
                i2 = ocPos[rt[1]][q2-s[0]][0];
                j2 = ocPos[rt[1]][q2-s[0]][1];
            }
        }
    }
}

real Potts::
hamming_dist( const szt t,
              const int d,
              const szt i,
              const szt j ) const noexcept
{
    XASSERT(t<=Parameters::numBasicTypes, "Type not found for t = " + STR(t));
    if (t == 0) return zero<real>;
    if (t == 4) return C<4>::hamming_dist(i, j, d, tp, di, L);
    if (t == 2) return C<2>::hamming_dist(i, j, d, tp, di, L);
    if (t == 3) return C<3>::hamming_dist(i, j, d, tp, di, L);
    return C<1>::hamming_dist(i, j, d, tp, di, L);
}

A2<real[BaseC::NT]> Potts::
massvarSC() noexcept
{
    std::array<std::vector<real>,BaseC::NT> s;
    for (auto& o : s)
        o.resize(scs.size());
    for (szt i=0; i<scs.size(); i++) {
        s[1][i] = scs[i].c[1].size();
        s[2][i] = scs[i].c[2].size();
        s[3][i] = scs[i].c[3].size();
        s[4][i] = scs[i].c[4].size();
        s[0][i] = s[1][i] + s[2][i] + s[3][i] + s[4][i];
    }
    A2<real[BaseC::NT]> v;
    for (szt i=0; i<BaseC::NT; i++) {
        // 0: mean of SC sizes; 1-4: mean of # of corresponding monomers per SC
        v[0][i] = avg(s[i]);
        // var of the same
        v[1][i] = var(s[i]);
    }
    return v;
}

constexpr szt Potts::
get_nbtmax( const szt t ) const noexcept
{
    if (t == 1) return C<1>::itr.size();
    if (t == 2) return C<2>::itr.size();
    if (t == 3) return C<3>::itr.size();
    if (t == 4) return C<4>::itr.size();
    return 0;
}

void Potts::
eTot() noexcept
{
    set_gE();
    std::fill(cE.begin(), cE.end(), zero<real>);
    for (szt i=0; i<L[0]; i++)
        for (szt j=0; j<L[1]; j++)
            cE[tp[i][j]] += gE[i][j] / two<real>;
}

void Potts::
set_gE() noexcept
{
    Vec2::fill<real>(gE, zero<real>);
    for (szt i=0; i<L[0]; i++)
        for (szt j=0; j<L[1]; j++)
            gE[i][j] = hamming_dist(tp[i][j], di[i][j], i, j);
}
void Potts::
setSCs() noexcept
{
    scs.clear();
    Vec2::fill<szt>(mskSC, zero<szt>);
    for (szt i=0; i<L[0]; i++)
        for (szt j=0; j<L[1]; j++)
            if (!mskSC[i][j] && tp[i][j]) {
                SC<BaseC> sc {scs.size()};
                parce(i, j, sc);
                scs.push_back(std::move(sc));
            }
    set_connectivity();
}

void Potts::
parce( const szt i,
       const szt j,
       SC<BaseC>& sc ) noexcept
{
    if (mskSC[i][j]) return;    // already parced here
    const auto t = tp[i][j];
    if (!t) return;             // site is empty
    mskSC[i][j] = sc.ind + 1;   // mark as parced

    auto ld = [&](const auto& itr) {
        for (const auto& o : itr) {
            const auto dOrig = (o.so == di[i][j]);
            const auto nbsh = dOrig ? o.sh : o.rv;
            const auto p = BaseC::position(i, j, nbsh, L);
            if (tp[p[0]][p[1]] == o.t &&
                di[p[0]][p[1]] == (dOrig ? o.di : Ornt::usd(o.di)))
                parce(p[0], p[1], sc);
        }
    };
    if (t == 1) {
        sc.c[t].push_back(new C<1>(sc.c[t].size(), di[i][j], A2<szt>{i,j}));
        ld(C<1>::itr);
    }
    else if (t == 2) {
        sc.c[t].push_back(new C<2>(sc.c[t].size(), di[i][j], A2<szt>{i,j}));
        ld(C<2>::itr);
    }
    else if (t == 3) {
        sc.c[t].push_back(new C<3>(sc.c[t].size(), di[i][j], A2<szt>{i,j}));
        ld(C<3>::itr);
    }
    else if (t == 4) {
        sc.c[t].push_back(new C<4>(sc.c[t].size(), di[i][j], A2<szt>{i,j}));
        ld(C<4>::itr);
    }
}

void Potts::
set_connectivity() noexcept
{
    for (auto& o : scs)
        for (szt k=1; k<BaseC::NT; k++)
            for (auto oo : o.c[k])
                oo->set_conn(tp, L);

    for (szt k=1; k<BaseC::NT; k++) {
        std::fill(conNbT[k].begin(), conNbT[k].end(), 0);
        const auto n = sps.Ntot[k-1];
        const auto nbtmax = get_nbtmax(k);
        for (szt h=0; h<nbtmax; h++) {
            int su {};
            for (const auto& o : scs)
                for (const auto& oo : o.c[k])
                    su += oo->get_conn(h);
            conNbT[k][h] = (n > 0) ? static_cast<real>(su) / n : 0;
        }
        // mean fraction of all slots a complex of type k posesses that are occupied:
        conCT[k] = (n > 0) ? avg(conNbT[k]) : 0;
    }
}

szt Potts::L[2];

szt Potts::V;

}   // namespace MosaicSC
