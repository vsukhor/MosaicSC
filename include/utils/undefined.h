#ifndef MOSAICSC_UTILS_UNDEFINED_H
#define MOSAICSC_UTILS_UNDEFINED_H

#include <limits>  // std::numeric_limits

namespace mosaicsc::utils {

inline namespace undef {

template<typename T>
concept numerically_limited = std::numeric_limits<T>::is_specialized;

template<numerically_limited T>
inline constexpr T EPS {std::numeric_limits<T>::epsilon()};

template<numerically_limited T>
inline constexpr T huge {
        std::numeric_limits<T>::has_infinity
        ? std::numeric_limits<T>::infinity()
        : std::numeric_limits<T>::max()
    };

template<numerically_limited T>
inline constexpr T undefined {huge<T>};

template<numerically_limited T> constexpr
bool is_defined(const T a)
{
    return a != undefined<T>;
}
template<numerically_limited T> constexpr
bool is_undefined(const T a)
{
    return a == undefined<T>;
}

template<numerically_limited T> inline constexpr
T MAX {std::numeric_limits<T>::max()};

template<numerically_limited T> inline constexpr
T MIN {std::numeric_limits<T>::min()};

template<numerically_limited T> inline constexpr
T INF {std::numeric_limits<T>::infinity()};


}  // namespace undef
}  // namespace mosaicsc::utils

#endif  // MOSAICSC_UTILS_UNDEFINED_H