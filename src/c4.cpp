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

#include "utils/common/misc.h"
#include "c4.h"

namespace MosaicSC {

using namespace Utils::Common;

C<4>::
C( const szt ind,
    const Ornt::T di,
    const A2<szt>& pos ) noexcept
    : BaseC {ind, di, pos}
{}

A2<szt> C<4>::
initialize( const A2<szt>& ini,
            vec2<szt>& tp,
            vec2<Ornt::T>& di,
            const szt L1) noexcept
{
    szt row {ini[0]};
    szt pos {ini[1]};
    auto orient = row == 1 ? Ornt::up : Ornt::dw;
    for (szt i=0; i<BaseC::sps->Ntot[type-1]; i++) {
        if (pos == L1 && orient == Ornt::up) {
            pos = ini[1];
            row = 3;
            orient = Ornt::dw;
        }
        tp[row][pos] = type;
        di[row][pos] = orient;
        pos++;
    }

    return {{row, pos}};
}

real C<4>::
hamming_dist(
        const szt i,
         const szt j,
         const Ornt::T ornt,
         const vec2<szt>& tp,
         const vec2<Ornt::T>& di,
         const szt L[] ) noexcept
{

    auto interacts = [&](auto& o) {
        return ((ornt == o.so              && is_occupied(o.t, o.di,            i, j, o.sh, tp, di, L)) ||
                (ornt == Ornt::usd(o.so) && is_occupied(o.t, Ornt::usd(o.di), i, j, o.rv, tp, di, L)));
    };

    for (const auto& o : phb)
        if (interacts(o))
            return INF<real>;

    real h {};
    bool flag {};
    for (const auto& o : itr)
        if (interacts(o)) {
            if (o.k == &k_1_4a)
                flag = true;
            else if (o.k == &k_1_4b)
                if (flag) return INF<real>;
            h += *o.k;
    }

    return BaseC::ph(h);
}

void C<4>::
set_conn(
        const vec2<szt>& tp,
        const szt L[] ) noexcept
{
    for (szt h=0; h<itr.size(); h++) {
        const auto nbsh = (itr[h].so == di)
                        ? itr[h].sh
                        : itr[h].rv;
        const auto nbpos = position(pos[0], pos[1], nbsh, L);
        conn[h] = (itr[h].t == tp[nbpos[0]][nbpos[1]]);
    }
}

bool C<4>::
node_is_occupied(
        const szt i,
        const szt j,
        const vec2<szt>& tp,
        const vec2<Ornt::T>& di,
        const szt L[] ) noexcept
{
    if (tp[i][j] == type) return true;

    for (const auto& o : occ) {

        if (const auto p = position(i, j, o.rv, L);
            di[p[0]][p[1]] == Ornt::up &&
            tp[p[0]][p[1]] == type) return true;
            
        if (const auto p = position(i, j, o.sh, L);
            di[p[0]][p[1]] == Ornt::dw &&
            tp[p[0]][p[1]] == type) return true;
    }

    return false;
}

void C<4>::
write( std::ofstream &ofs ) const
{
    ofs.write((char*const) &ind, sizeof(ind));
    ofs.write((char*const) &type, sizeof(type));
    ofs.write((char*const) &di, sizeof(di));
    auto k = pos[0]; ofs.write((char*const) &k, sizeof(k));
         k = pos[1]; ofs.write((char*const) &k, sizeof(k));

    for (const auto& o : conn)
        ofs.write((char*const) &o, sizeof(o));
}

}   // namespace MosaicSC
