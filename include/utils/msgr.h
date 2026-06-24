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
 * \file msgr.h
 * Class for outputting short messages to console or a text file.
 * \author Valerii Sukhorukov
 */

#ifndef MOSAICSC_UTILS_MSGR_H
#define MOSAICSC_UTILS_MSGR_H

#include "utils/colorcodes.h"

#include <array>
#include <fstream>
#include <iostream>
#include <ostream>
#include <source_location>
#include <sstream>
#include <stdarg.h>
#include <string>
#include <type_traits>
#include <utility>   // forward
#include <vector>

/// Library outer namespace.
namespace mosaicsc::utils {


// /////////////////////////////////////////////////////////////////////////////

template<typename ...Args>
constexpr
void failure_message(
    const char* CND,
    const std::source_location location,
    Args... msg
)
{
    using cc = utils::Colorcodes;

    std::cerr << cc::BOLDRED << "Assertion ( "
              << cc::BOLDCYAN << CND << cc::BOLDRED
              << " ) failed!" << cc::RESET << '\n'
              << cc::YELLOW << "    file:     " << cc::RESET
              << location.file_name() << '('
              << location.line() << ':'
              << location.column() << ")\n"
              << cc::YELLOW << "    function: " << cc::RESET
              << location.function_name() << "\n"
              << cc::BOLDRED << "Reason: " << cc::RESET;

    if constexpr (sizeof...(Args))
        (std::cerr << ... << msg);

    std::cerr << std::endl;

    std::exit(EXIT_FAILURE);
}

// /////////////////////////////////////////////////////////////////////////////

/**
 * \class Msgr msgr.h
 * Convenient formatted text output to the screen and a logfile.
 * \details Implements convenience class for formatted text output
 * to std::cout and to a logfile.
 */
class Msgr {

public:

    using outstream = std::ostream;
    using logstream = std::ofstream;


    outstream* so {};  ///< Screen out stream.
    logstream* sl {};  ///< Logfile stream.

    /// Default constructor.
    Msgr() = default;

    /**
     * Constructs This object given streams to the screen and to file.
     * \param so Screen out stream.
     * \param sl File out stream.
     * \param precision Precision of real numbers.
     */
    explicit Msgr(
        outstream* so,
        logstream* sl,
        int precision
    );

    /**
     * Set formatting parameters.
     * \param precision Precision of real numbers
     */
    void set_formats(int precision) noexcept;

    /**
     * Print std::array.
     * \tparam V Data type of array elements.
     * \tparam N Number of array elements.
     * \param name Name/title.
     * \param v Array data.
     */
    template<typename V, auto N>
    void print_array(
        const std::string& name,
        const std::array<V,N>& v
    ) const noexcept;

    /**
     * Print named std::vector .
     * \tparam V Data type of vector elements.
     * \param name Name/title.
     * \param v Vector data.
     */
    template<typename V>
    void print_vector(
        const std::string& name,
        const std::vector<V>& v
    ) const noexcept;

    /**
     * Print an data series of of various types.
     * \details Based on proposition stackoverflow.com proposition by geza:
     * https://stackoverflow.com/questions/51647834/printf-like-utility-in-c-without-format-specifier/51648068#51648068
     * \tparam endline Finish with line end.
     * \param values Values to print.
     */
    template<bool endline=true, typename... T>
    void print(T... values) const;

    /**
     * Print an data series of of various types and exit the process.
     * \details Based on proposition stackoverflow.com proposition by geza:
     * https://stackoverflow.com/questions/51647834/printf-like-utility-in-c-without-format-specifier/51648068#51648068
     * \param values Values to print.
     */
    template<typename... T>
    void exit(T... values);

    /**
     * ostream operator with the same functionaluty as the print method.
     * \note The oputput is not terminated by a \a newline .
     */
    template<typename... T>
    Msgr& operator<<(T... values);

    /**
     * Packs \p values into an output stringstream.
     */
    template<typename... T>
    static auto oss(T... values) -> std::ostringstream;

private:

    /**
     * Check that the stream used is valid.
     * \tparam S Stream type.
     */
    template<typename S>
    static constexpr auto is_valid_stream() noexcept;

    /**
     * Removes color codes from the stream directed to a file.
     */
    auto rm_colorcode(std::string&& v) const noexcept -> std::string;

    /**
     * Print to a stream \p io.
     * \tparam IO Stream type.
     * \param v String to print.
     * \param endline Specifies if the line end should be added.
     */
    template<typename IO>
    void prn(
        IO* io,
        std::string&& v,
        bool endline
    ) const noexcept;
};


// IMPLEMENTATION ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

inline
Msgr::
Msgr(
    outstream* so,
    logstream* sl,
    int precision
)
    : so {so}
    , sl {sl}
{
    set_formats(precision);
}


inline
void Msgr::
set_formats(const int precision) noexcept
{
    if (so) {
        so->precision(precision);
        so->setf(std::ios::scientific);
    }
    if (sl) {
        sl->precision(precision);
        sl->setf(std::ios::scientific);
    }
}


template<typename S>
constexpr auto Msgr::
is_valid_stream() noexcept
{
    return std::is_same_v<S, outstream> ||
           std::is_same_v<S, logstream>;
}


inline
auto Msgr::
rm_colorcode(std::string&& s) const noexcept -> std::string
{
    for (const auto& p: colorcodes.sall) {
        auto n = p.length();
        for (auto i = s.find(p); i != std::string::npos; i = s.find(p))
            s.erase(i, n);
    }

    return s;
}


template<typename IO>
void Msgr::
prn(
    IO* io,
    std::string&& v,
    const bool endline
) const noexcept
{
    static_assert(is_valid_stream<IO>(),
                  "Stream type used in Msgr is not valid");

    if constexpr (std::is_same_v<IO, logstream>)
        v = rm_colorcode(std::forward<std::string>(v));

    *io << v << " ";
    if (endline)
        *io << std::endl;
    io->flush();
}


template<typename V, auto N>
void Msgr::
print_array(
    const std::string& name,
    const std::array<V,N>& v
) const noexcept
{
    print<false>(name+"[]:  ");
    for (const auto o : v)
        print<false>(o);
    print("");
}


template<typename V>
void Msgr::
print_vector(
    const std::string& name,
    const std::vector<V>& v
) const noexcept
{
    print<false>(name+"[]:  ");
    for (const auto o : v)
        print<false,V>(o);
    print<true>("");
}


template<typename... T>
auto Msgr::
oss(T... values) -> std::ostringstream  // static
{
    std::ostringstream s;

    (s << ... << values);
    s.flush();

    return s;
}


template<bool endline,
         typename... T>
void Msgr::
print(T... values) const
{
    const auto s = oss(values...);

	if (sl) prn(sl, s.str(), endline);
	if (so) prn(so, s.str(), endline);
}


template<typename... T>
void Msgr::
exit(T... values)
{
    print(values...);

    ::exit(EXIT_FAILURE);
}


template<typename... T>
Msgr& Msgr::
operator<<(T... values)
{
    print<false>(values...);

    return *this;
}


template<typename T>
concept Printable = requires(std::ostream& os, const T& t)
{
    { t.print(os) };
};

template<Printable T>
std::ostream& operator<<(std::ostream& os, const T& t)
{
    t.print(os);
    return os;
}

}  // namespace mosaicsc::utils

#endif  // MOSAICSC_UTILS_MSGR_H
