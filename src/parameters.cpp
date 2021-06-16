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

#include <filesystem>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

#include "utils/common/misc.h"
#include "utils/msgr.h"

#include "definitions.h"
#include "parameters.h"

namespace mosaicsc {

Parameters::
Parameters( const path& configFile )
{
    load_config(configFile);
}

void Parameters::
load_config( const path& file )
{
    using sstr = std::stringstream;
    std::string parname;
    std::string value;
    std::ifstream config {file};
    if (!config.is_open()) {
        std::cerr << "Cannot open file: " << file.string();
        std::exit(EXIT_FAILURE);
    }

    config.clear();
    config.seekg(0, std::ios::beg);
    while (config.good()) {
        if (!preprocess_line(config, parname, value))
            continue;
        if (     parname == "RUN_ini")        sstr(value) >> RUN_ini;
        else if (parname == "RUN_end")        sstr(value) >> RUN_end;
        else if (parname == "nthreads")       sstr(value) >> nthreads;
        else if (parname == "resume")         sstr(value) >> resume;
        else if (parname == "Niter")          sstr(value) >> Niter;
        else if (parname == "logfreq")        sstr(value) >> logfreq;
        else if (parname == "detailedfreq")   sstr(value) >> detailedfreq;
        else if (parname == "finaldetailed")  sstr(value) >> finaldetailed;
        else if (parname == "savefreq")       sstr(value) >> savefreq;
        else if (parname == "Ntot")
            initialize_arrayparam(numBasicTypes, value, "numBasicTypes", Ntot);
        else if (parname == "dilution")       sstr(value) >> dilution;
        else if (parname == "inum")           sstr(value) >> inum;
        else if (parname == "rates_f")
            initialize_arrayparam(inum, value, "inum", rates_f);
        else if (parname == "syn")            sstr(value) >> syn;
        else if (parname == "beta")           sstr(value) >> beta;
        else if (parname != "") {
            std::cerr << "Error in config file: unknown parameter name: "
                      << parname << std::endl;
            std::exit(EXIT_FAILURE);
        }
    }
}

void Parameters::
print( utils::Msgr& msgr ) const
{
    msgr.print("Parameters: ");
    msgr.print("workingDir_in: ", workingDir_in.string());
    msgr.print("workingDir_out: ", workingDir_out.string());
    msgr.print("RUN_ini = ", RUN_ini);
    msgr.print("RUN_end = ", RUN_end);
    msgr.print("nthreads = ", nthreads);
    msgr.print("resume = ", int(resume));
    msgr.print("Niter = ", Niter);
    msgr.print("logfreq = ", logfreq);
    msgr.print("detailedfreq = ", detailedfreq);
    msgr.print("finaldetailed = ", int(finaldetailed));
    msgr.print("savefreq = ", savefreq);
    msgr.print_vector("Ntot ", Ntot); msgr.print<true>("");
    msgr.print("dilution = ", dilution);
    msgr.print("inum = ", inum);
    msgr.print_vector("rates_f ", rates_f); msgr.print<true>("");
    msgr.print("syn = ", syn);
    msgr.print("beta = ", beta);
}

template<typename K>
void Parameters::
initialize_arrayparam( const szt len,
                       std::string value,
                       const std::string& parname,
                       std::vector<K>& par )
{
    if (len < 1) {
        std::cerr << "Error in config file: " + parname
                  << " should be initialized before"
                  << std::endl;
        std::exit(EXIT_FAILURE);
    }
    par.resize(len);
    const std::string emp {" "}, tab {"\t"};
    for (szt j=0; j<len; j++) {
        unsigned long e {value.find(emp)};
        if (e == std::string::npos) e = value.find(tab);
        if (e == std::string::npos) e = value.length();
        const std::string val {value.substr(0, e)};
        if (val.length() < 1) {
            std::cerr << "Error in config file: Number of elelments in "
                      << parname << " is smaller than " << len
                      << std::endl;
            std::exit(EXIT_FAILURE);
        }
        std::stringstream(val) >> par[j];
        value.erase( 0, e );
        while (!value.substr(0, 1).compare(emp) ||
               !value.substr(0, 1).compare(tab))
            value.erase(value.begin());
    }
}

// If the line contains a valid parname-value combination,
// returns true and combination, otherwise retruns false.
bool Parameters::
preprocess_line( std::ifstream& config,
                 std::string& parname,
                 std::string& value )
{
    const std::string emp {" "}, tab {"\t"};
    std::string line;
    getline(config, line);
    unsigned long commentpos {line.find_first_of('#')};
    if (commentpos != std::string::npos)
        line.erase(commentpos);
    if (!line.length())
        return false;

    while ( !line.substr(line.length()-1, 1).compare(emp) ||
            !line.substr(line.length()-1, 1).compare(tab) )
        line.erase(line.length()-1);

    if (!line.length())
        return false;

    int parnameend = -1;
    if (     line.find_first_of(emp) == std::string::npos &&
             line.find_first_of(tab) != std::string::npos)
        parnameend = (int)line.find_first_of(tab);
    else if (line.find_first_of(emp) != std::string::npos &&
             line.find_first_of(tab) == std::string::npos)
        parnameend = (int)line.find_first_of(emp);
    else if (line.find_first_of(emp) != std::string::npos &&
             line.find_first_of(tab) != std::string::npos)
        parnameend = std::min((int)line.find_first_of(emp),
                              (int)line.find_first_of(tab));
    parname = line.substr(0, (size_t)parnameend);

    value = line.substr(line.find_last_of("=")+1);
    while ( !value.substr(0, 1).compare(emp) ||
            !value.substr(0, 1).compare(tab) )
        value.erase(value.begin());

    return true;
}

}   // namespace mosaicsc
