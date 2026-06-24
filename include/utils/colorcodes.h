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
 * \file colorcodes.h
 * Codes for colors on cmd terminal output.
 * \author Valerii Sukhorukov
 */

#ifndef MOSAICSC_UTILS_COLORCODES_H
#define MOSAICSC_UTILS_COLORCODES_H

#include <array>
#include <string>

/// Library outer namespace.
namespace mosaicsc::utils {


struct Colorcodes {

static constexpr const char* BOLD        {"\033[1m"};
static constexpr const char* RESET       {"\033[0m"};
static constexpr const char* BLACK       {"\033[30m"};          // Black
static constexpr const char* RED         {"\033[31m"};          // Red
static constexpr const char* GREEN       {"\033[32m"};          // Green
static constexpr const char* YELLOW      {"\033[33m"};          // Yellow
static constexpr const char* BLUE        {"\033[34m"};          // Blue
static constexpr const char* MAGENTA     {"\033[35m"};          // Magenta
static constexpr const char* CYAN        {"\033[36m"};          // Cyan
static constexpr const char* WHITE       {"\033[37m"};          // White
static constexpr const char* BOLDBLACK   {"\033[1m\033[30m"};   // Bold Black
static constexpr const char* BOLDRED     {"\033[1m\033[31m"};   // Bold Red
static constexpr const char* BOLDGREEN   {"\033[1m\033[32m"};   // Bold Green
static constexpr const char* BOLDYELLOW  {"\033[1m\033[33m"};   // Bold Yellow
static constexpr const char* BOLDBLUE    {"\033[1m\033[34m"};   // Bold Blue
static constexpr const char* BOLDMAGENTA {"\033[1m\033[35m"};   // Bold Magenta
static constexpr const char* BOLDCYAN    {"\033[1m\033[36m"};   // Bold Cyan
static constexpr const char* BOLDWHITE   {"\033[1m\033[37m"};   // Bold White

const std::string sBOLD        {BOLD};
const std::string sRESET       {RESET};
const std::string sBLACK       {BLACK};
const std::string sRED         {RED};
const std::string sGREEN       {GREEN};
const std::string sYELLOW      {YELLOW};
const std::string sBLUE        {BLUE};
const std::string sMAGENTA     {MAGENTA};
const std::string sCYAN        {CYAN};
const std::string sWHITE       {WHITE};
const std::string sBOLDBLACK   {BOLDBLACK};
const std::string sBOLDRED     {BOLDRED};
const std::string sBOLDGREEN   {BOLDGREEN};
const std::string sBOLDYELLOW  {BOLDYELLOW};
const std::string sBOLDBLUE    {BOLDBLUE};
const std::string sBOLDMAGENTA {BOLDMAGENTA};
const std::string sBOLDCYAN    {BOLDCYAN};
const std::string sBOLDWHITE   {BOLDWHITE};


static constexpr std::array all {
    BOLD, RESET,
    BLACK,     RED,     GREEN,     YELLOW,     BLUE,     MAGENTA,     CYAN,     WHITE,
    BOLDBLACK, BOLDRED, BOLDGREEN, BOLDYELLOW, BOLDBLUE, BOLDMAGENTA, BOLDCYAN, BOLDWHITE
};

const std::array<std::string, all.size()> sall {
    sBOLD, sRESET,
    sBLACK,     sRED,     sGREEN,     sYELLOW,     sBLUE,     sMAGENTA,     sCYAN,     sWHITE,
    sBOLDBLACK, sBOLDRED, sBOLDGREEN, sBOLDYELLOW, sBOLDBLUE, sBOLDMAGENTA, sBOLDCYAN, sBOLDWHITE
};

};  // struct Colorcodes

inline constexpr Colorcodes colorcodes;

}  // namespace mosaicsc::utils

#endif // MOSAICSC_UTILS_COLORCODES_H
