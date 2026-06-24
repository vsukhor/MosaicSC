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
 * \file _misc.h
 * \brief Generic array template.
 * \author Valerii Sukhorukov
 */

#ifndef MOSAICSC_UTILS_ARRAYS_MISC_H
#define MOSAICSC_UTILS_ARRAYS_MISC_H

#include "utils/constants.h"
#include <array>

/// Custom arrays.
namespace mosaicsc::utils::arrays {

//==============================================================================
/**
 * A std:iota-like compile-time generator of integers [1, ..., N].
 * \details A compile-time generator of std:iota-like array of consecutive
 * integers [1, ..., N].
 * Adopted from https://stackoverflow.com/users/636019/ildjarn
 * at https://stackoverflow.com/questions/41660062/how-to-construct-an-stdarray-with-index-sequence
 */
namespace iota_array {
    template<typename T, T... Ns>
    constexpr std::array<T, sizeof...(Ns)> make_iota_array(
        T const offset,
        std::integer_sequence<T, Ns...> /* unused */
    ) noexcept
  {
    return {{(Ns + offset)...}};
  }
}  // namespace iota_array

template<typename T, T N>
constexpr auto make_iota_array(T const offset) noexcept
{
    static_assert(N >= T{}, "no negative sizes");

    return iota_array::make_iota_array<T>(
        offset, std::make_integer_sequence<T, N>{}
    );
}

//==============================================================================

/**
 * Generic array template.
 * \tparam N Array length.
 * \tparam T Type of the elements. Must be arithmetic.
 */
template<unsigned N,
         arithmetic T>
class array {};

}  // namespace mosaicsc::utils::arrays

#endif  // MOSAICSC_UTILS_ARRAYS_MISC_H
