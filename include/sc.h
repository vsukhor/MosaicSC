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

#ifndef MOSAICSC_SC_H
#define MOSAICSC_SC_H

#include <fstream>
#include <iostream>

#include "parameters.h"

namespace mosaicsc {

using utils::szt;

template <typename BC>
struct SC {

    szt ind;
    std::array<std::vector<BC*>,BC::NT> c;

    explicit SC(szt ind);

    std::array<szt,BC::NT> get_numC();

    void write(std::ofstream&) const;

};

// IMPLEMENTATION ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

template <typename BC>
SC<BC>::
SC( const szt ind )
    : ind {ind}
{}

template <typename BC>
inline std::array<szt,BC::NT> SC<BC>::
get_numC()
{
    std::array<szt,BC::NT> num = {};
    for (const auto& o : c)
        num[(int)o->get_type()-1]++;
    return num;
}

template <typename BC>
void SC<BC>::
write( std::ofstream& ofs ) const
{
    ofs.write(reinterpret_cast<const char*>(&ind), sizeof(ind));
                                                        
    for (const auto& o : c) {
        const szt s {o.size()};
        ofs.write(reinterpret_cast<const char*>(&s), sizeof(s));
        for (const auto oo : o)
            oo->write(ofs);
    }
}

}   // namespace mosaicsc

#endif // MOSAICSC_SC_H
