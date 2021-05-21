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

#include "io.h"
#include "potts.h"

namespace MosaicSC {

using namespace Utils::Common;

class Potts;

IO::
IO( Potts* host ) noexcept
    : sps {host->sps}
    , runname {host->runname}
    , host {host}
    , msgr {host->msgr}
    , mtx {host->mtx}
    , L {host->L}
    , scs {host->scs}
    , mskSC {host->mskSC}
    , tp {host->tp}
    , di {host->di}
    , cE {host->cE}
    , gE {host->gE}
{}

void IO::
print_lattice( const szt i1,
               const szt j1,
               const szt i2,
               const szt j2 ) const noexcept
{
    szt x0 {};
    do {
        auto width = std::min(screenWidth, L[1] - x0);
        print_lattice(i1, j1, i2, j2, x0, x0 + width);
        x0 += screenWidth;
    } while (x0 < L[1]);
}

void IO::
print_lattice( const szt i1,
               const szt j1,
               const szt i2,
               const szt j2,
               const szt x0,
               const szt x1 ) const noexcept
{
                if(host->it == 20)
                std::cout << "";
    std::cout << std::endl;
    for (szt i=0; i<L[0]; i++) {
        for (szt j=x0; j<x1; j++) {
            auto cl = ANSI_RESET;
            if(      C<1>::node_is_occupied(i, j, tp, di, L))
                cl = ANSI_BG_BLUE;
            else if (C<2>::node_is_occupied(i, j, tp, di, L))
                cl = ANSI_BG_YELLOW;
            else if (C<3>::node_is_occupied(i, j, tp, di, L))
                cl = ANSI_BG_RED;
            else if (C<4>::node_is_occupied(i, j, tp, di, L))
                cl = ANSI_BG_GREEN;
//            auto cb = ANSI_BOLD_OFF;
            if ((i == i1 && j == j1) ||
                (i == i2 && j == j2))
                cl = ANSI_BG_MAGENTA; //ANSI_BOLD_ON;
            std::cout  << cl << tp[i][j] << "  ";
        }
        std::cout << ANSI_RESET << std::endl;
    }
    std::cout << std::endl;
}

void IO::
print_orient() const noexcept
{
    szt x0 {};
    do {
        auto width = std::min(screenWidth, L[1] - x0);
        print_orient(x0, x0 + width);
        x0 += screenWidth;
    } while (x0 < L[1]);
}

void IO::
print_orient( const szt x0,
              const szt x1 ) const noexcept
{
    std::cout << std::endl;
    for (szt i=0; i<L[0]; i++) {
        for (szt j=x0; j<x1; j++) {
            auto cl {ANSI_RESET};
            auto sg = di[i][j] == Ornt::dw
                    ? "-" : di[i][j] == Ornt::up
                          ? "+" : di[i][j] == Ornt::no
                                  ? "0" : "o";
            if (C<3>::node_is_occupied(i, j, tp, di, L))
                cl = (di[i][j] == Ornt::no)
                   ? ANSI_BG_GREEN
                   : ANSI_BG_YELLOW;
            else if (C<1>::node_is_occupied(i, j, tp, di, L) ||
                     C<2>::node_is_occupied(i, j, tp, di, L) ||
                     C<4>::node_is_occupied(i, j, tp, di, L) ) {
                cl = (di[i][j] == Ornt::up)
                   ? ANSI_BG_RED
                   : di[i][j] == Ornt::dw ? ANSI_BG_BLUE
                                          : ANSI_BG_YELLOW;
            }
            std::cout << cl << sg << "  ";
        }
        std::cout << ANSI_RESET << std::endl;
    }
    std::cout << std::endl;
}

void IO::
print_gE_color( const szt i1,
                const szt j1,
                const szt i2,
                const szt j2 ) const noexcept
{
    for (szt i=0; i<L[0]; i++) {
        for (szt j=0; j<L[1]; j++) {
            auto cl {ANSI_FG_WHITE};
            if (    tp[i][j] != 0)         cl = ANSI_FG_YELLOW;
            if (    gE[i][j] < zero<real>) cl = ANSI_FG_BLUE;
            else if(gE[i][j] > zero<real>) cl = ANSI_FG_RED;
//            auto cb = ANSI_BOLD_OFF;
            if ((i == i1 && j == j1) ||
                (i == i2 && j == j2))
                cl = ANSI_FG_MAGENTA;//ANSI_BOLD_ON;
            std::cout << cl << gE[i][j] << " ";
        }
        std::cout << ANSI_FG_WHITE << std::endl;
    }
    std::cout << std::endl;
}

void IO::
print_gE_bw( const szt ,//i1,
             const szt ,//j1,
             const szt ,//i2,
             const szt //j2
             ) const noexcept
{
    for (szt i=0; i<L[0]; i++) {
        for (szt j=0; j<L[1]; j++)
            std::cout << gE[i][j] << " ";
        std::cout << std::endl;
    }
    std::cout << std::endl;
}

void IO::
print_mskSC() const noexcept
{
    szt x0 {};
    do {
        auto width = std::min(screenWidth, L[1] - x0);
        print_mskSC(x0, x0 + width);
        x0 += screenWidth;
    } while (x0 < L[1]);
}

void IO::
print_mskSC(const szt x0,
            const szt x1) const noexcept
{
    for (szt i=0; i<L[0]; i++) {
        for (szt j=x0; j<x1; j++) {
            auto s {""};
            auto cl {ANSI_RESET};
            if (     mskSC[i][j] < 10) s = "  ";
            else if (mskSC[i][j] < 100) s = " ";
            else if (mskSC[i][j] < 1000) s = "";
            if (C<1>::node_is_occupied(i, j, tp, di, L) ||
                C<2>::node_is_occupied(i, j, tp, di, L) ||
                C<3>::node_is_occupied(i, j, tp, di, L) ||
                C<4>::node_is_occupied(i, j, tp, di, L) )
                cl = ANSI_INVERSE_ON;
            std::cout << cl << mskSC[i][j] << s;
        }
        std::cout << ANSI_RESET << std::endl;
    }
    std::cout << std::endl;
}

void IO::
logline( std::ostream& ofs, const szt itt,
         const szt i1, const szt j1,
         const szt i2, const szt j2,
         const szt t1old, const Ornt::T d1old,
         const szt t2old, const Ornt::T d2old,
         const szt t1new, const Ornt::T d1new,
         const szt t2new, const Ornt::T d2new,
         const real e1old, const real e2old,
         const real e1new, const real e2new, const real dE ) const noexcept
{
    ofs << itt << " : "
        << "runname " << runname
        << " L " << L[0] << " " << L[1]
        << " (" << t1old << ", " << d1old << ") at " << i1 << " " << j1
        << " and (" << t2old << ", " << d2old << ") at " << i2 << " " << j2
        << " to ("   << t1new << ", " << d1new
        << ") and (" << t2new << ", " << d2new << ")" << std::endl;
    ofs << " eOld: " << e1old << " " << e2old
        << " eNew: " << e1new << " " << e2new
        << " dE " << dE;
    ofs << " cE "; for (const auto o : cE) ofs << o << " ";
    ofs << "Etot " << avg(cE) << std::endl;
    ofs << " nSC " << scs.size();

    A2<real[BaseC::NT]> mv = host->massvarSC();
    ofs << " scMasM ";
    for (const auto o : mv[0])
        ofs << o << " ";
    ofs << "scMasV ";
    for (const auto o : mv[1])
        ofs << o << " ";
    ofs << std::endl;

    ofs << " conCT ";
    for (const auto& o : host->conCT)
        ofs << o << " ";
    for (szt k=1; k<BaseC::NT; k++) {
        ofs << " (" + STR(k) + ") ";
        for (const auto o : host->conNbT[k])
            ofs << o << " ";
    }
    ofs << std::endl;
}

void IO::
output( const bool startnew, const szt itt,
        const szt i1, const szt j1,
        const szt i2, const szt j2,
        const szt t1old, const Ornt::T d1old,
        const szt t2old, const Ornt::T d2old,
        const szt t1new, const Ornt::T d1new,
        const szt t2new, const Ornt::T d2new,
        const real e1old, const real e2old,
        const real e1new, const real e2new,
        const real dE ) const noexcept
{
    host->eTot();
    host->setSCs();
    if (sps.detailedfreq > 0 &&
        (host->it % sps.detailedfreq == 0 ||
         host->it > sps.Niter - sps.finaldetailed)) {
        mtx.lock();
            print_lattice(i1, j1, i2, j2);
//        print_gE_color(i1, j1, i2, j2);
//        print_gE_bw(i1, j1, i2, j2);
            print_orient();
            print_mskSC();
        mtx.unlock();
    }
    mtx.lock();
    logline(*msgr.so, itt, i1, j1, i2, j2, t1old, d1old, t2old, d2old, t1new, d1new, t2new, d2new, e1old, e2old, e1new, e2new, dE);
    logline(*msgr.sl, itt, i1, j1, i2, j2, t1old, d1old, t2old, d2old, t1new, d1new, t2new, d2new, e1old, e2old, e1new, e2new, dE);
    if (host->it % sps.savefreq == 0) {
        write(startnew, 0, host->it);
//        write_lattice(startnew, 0, it);
        write_lattice(1, 1, host->it);
    }
    mtx.unlock();
}

int IO::
write( const bool startnew,
       const bool last,
       const szt itt ) const
{

    std::string fname {last ? sps.workingDir_out+"scs_last_"+runname
                            : sps.workingDir_out+"scs_"+runname};
    std::ofstream ofs {fname, startnew ? std::ios::binary | std::ios::trunc
                                       : std::ios::binary | std::ios::app};
    if (ofs.fail())
        throw Exceptions::Simple(
            "Error in write: Cannot open file: "+fname, &msgr);

    if (startnew) {
        ofs.write(reinterpret_cast<const char*>(&L[0]), sizeof(szt));
        ofs.write(reinterpret_cast<const char*>(&L[1]), sizeof(szt));
    }
    ofs.write(reinterpret_cast<const char*>(&itt), sizeof(szt));
    szt s {host->scs.size()};
    ofs.write(reinterpret_cast<const char*>(&s), sizeof(szt));
    for (szt q=0; q<host->scs.size(); q++)
        host->scs[q].write(ofs);

    szt nst2save {last ? 0 : szt(host->it/sps.savefreq)};
    ofs.write(reinterpret_cast<const char*>(&nst2save), sizeof(szt));

    return 0;
}

int IO::
write_lattice( const bool startnew,
               const bool last,
               const szt itt ) const
{
    auto fname = last ? sps.workingDir_out+"lat_last_"+runname
                      : sps.workingDir_out+"lat_"+runname;
    auto flags = startnew ? std::ios::binary | std::ios::trunc
                          : std::ios::binary | std::ios::app;
    std::ofstream ofs {fname, flags};
    if (ofs.fail())
        throw Exceptions::Simple(
                "Error in write_lattice: Cannot open file: "+fname, &msgr);

    if (startnew) {
        ofs.write(reinterpret_cast<const char*>(&L[0]), sizeof(szt));
        ofs.write(reinterpret_cast<const char*>(&L[1]), sizeof(szt));
    }
    ofs.write(reinterpret_cast<const char*>(&itt), sizeof(szt));
    for (szt i=0; i<L[0]; i++)
        for (szt j=0; j<L[1]; j++) {
            const auto g = static_cast<unsigned char>(tp[i][j]);
            ofs.write(reinterpret_cast<const char*>(&g), sizeof(g));
        }

    return 0;
}

szt IO::
readin_lattice()
{
    szt itt;
    auto fname = sps.workingDir_out + "lat_last_" + runname;
    std::ifstream ifs {fname, std::ios::binary};
    if(ifs.fail())
        throw Exceptions::Simple(
            "Error in read_lattice: Cannot open file: " + fname, &msgr);

    szt l0, l1;
    ifs.read(reinterpret_cast<char*>(&l0), sizeof(szt));
    ifs.read(reinterpret_cast<char*>(&l1), sizeof(szt));
    if (l0 != L[0] || l1 != L[1])
        throw Exceptions::Simple(
            "Error in read_lattice: Lattice dimensions do not agree: "+fname, &msgr);

    ifs.read(reinterpret_cast<char*>(&itt), sizeof(szt));
    for (szt i=0; i<L[0]; i++)
        for (szt j=0; j<L[1]; j++) {
            unsigned char g;
            ifs.read(reinterpret_cast<char*>(&g), sizeof(g));
            tp[i][j] = g;
            di[i][j] = (i > 2) ? 1 : 0;
        }

    return host->it + 1;
}

}   // namespace MosaicSC
