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
#include "c3.h"

namespace MosaicSC {

C<3>::
C( const szt ind,
    const Ornt::T di,
    const A2<szt>& pos ) noexcept
    : BaseC {ind, di, pos}
{}

Utils::Common::szt C<3>::
initialize( const szt posini,
            vec2szt& tp,
            vec2ort& di ) noexcept
{
    szt pos {posini};
    for (szt j=0; j<BaseC::sps->Ntot[type-1]; j++) {
        tp[2][pos] = type;
        di[2][pos] = Ornt::no;
        pos++;
    }
    return pos;
}

real C<3>::
hamming_dist(
    const szt i,
    const szt j,
    const Ornt::T , //ornt,
    const vec2szt& tp,
    const vec2ort& di,
    const szt L[]) noexcept
{
    auto interacts = [&](auto& o) {
        return (is_occupied(o.t, o.di, i, j, o.sh, tp, di, L));
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

inline int  C<3>::
get_conn( const szt h ) noexcept
{
    return conn[h];
}

inline void C<3>::
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

bool C<3>::
node_is_occupied(
              const szt i,
              const szt j,
              const vec2szt& tp,
              const vec2ort& , // di,
              const szt L[] ) noexcept
{
    if (tp[i][j] == type) return true;

    for (const auto& o : occ) {
        if (const auto p = position(i, j, o.rv, L);
            tp[p[0]][p[1]] == type) return true;
    }

    return false;
}

void C<3>::
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
