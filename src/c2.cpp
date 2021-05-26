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

#include "utils/common/misc.h"
#include "c2.h"

namespace MosaicSC {

C<2>::
C( const szt ind,
    const Ornt::T di,
    const A2<szt>& pos ) noexcept
    : BaseC {ind, di, pos}
{}

A2<Utils::Common::szt> C<2>::
initialize( const A2<szt>& ini,
            vec2szt& tp,
            vec2ort& di,
            const szt L1 ) noexcept
{
    szt row {ini[0]};
    szt pos {ini[1]};
    auto orient = row == 0 ? Ornt::up : Ornt::dw;
    for (szt i=0; i<BaseC::sps->Ntot[type-1]; i++) {
        if (pos == L1 && orient == Ornt::up) {
            pos = 0;
            row = 4;
            orient = Ornt::dw;
        }
        tp[row][pos] = type;
        di[row][pos] = orient;
        pos++;
    }

    return {{row, pos}};
}

real C<2>::
hamming_dist( const szt i,
     const szt j,
     const Ornt::T ornt,
     const vec2szt& tp,
     const vec2ort& di,
     const szt L[] ) noexcept
{
    auto interacts = [&](auto& o) {
        return ((ornt == o.so            &&
                 is_occupied(o.t, o.di,            i, j, o.sh, tp, di, L)) ||
                (ornt == Ornt::usd(o.so) &&
                 is_occupied(o.t, Ornt::usd(o.di), i, j, o.rv, tp, di, L)));
    };

    for (const auto& o : phb)
        if (interacts(o))
            return Utils::Common::INF<real>;

    real h {};
    for (const auto& o : itr)
        if (interacts(o))
            h += *o.k;

    return BaseC::ph(h);
}

inline int C<2>::
get_conn( const szt h ) noexcept
{
    return conn[h];
}

inline void C<2>::
set_conn( const vec2szt& tp,
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

bool C<2>::
node_is_occupied(
              const szt i,
              const szt j,
              const vec2szt& tp,
              const vec2ort& , // di
              const szt[]) noexcept
{
    return tp[i][j] == type;
}

void C<2>::
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
