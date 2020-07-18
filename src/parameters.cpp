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

#include <string>
#include <vector>
#include <iostream>
#include <sstream>

#include "utils/common/misc.h"

#include "definitions.h"
#include "parameters.h"

namespace MosaicSC {
using namespace Utils::Common;

Parameters::
Parameters( const std::string& configFname )
{
    load_config(configFname);
}

void Parameters::
load_config( const std::string& fname )
{
    std::string parname, value;
    std::ifstream config {fname};
    if (!config.is_open()) {
        std::cout << "Cannot open file: " + fname;
        exit(0);
    }

    config.clear();
    config.seekg(0, std::ios::beg);
    while (config.good()) {
        if (!preprocess_line(config, parname, value))
            continue;
        if (     parname == "RUN_ini")        std::stringstream(value) >> RUN_ini;
        else if (parname == "RUN_end")        std::stringstream(value) >> RUN_end;
        else if (parname == "nthreads")       std::stringstream(value) >> nthreads;
        else if (parname == "resume")         std::stringstream(value) >> resume;
        else if (parname == "Niter")          std::stringstream(value) >> Niter;
        else if (parname == "logfreq")        std::stringstream(value) >> logfreq;
        else if (parname == "detailedfreq")   std::stringstream(value) >> detailedfreq;
        else if (parname == "finaldetailed")  std::stringstream(value) >> finaldetailed;
        else if (parname == "savefreq")       std::stringstream(value) >> savefreq;
        else if (parname == "Ntot")           initialize_arrayparam(numBasicTypes, value, "numBasicTypes", Ntot);
        else if (parname == "dilution")       std::stringstream(value) >> dilution;
        else if (parname == "inum")           std::stringstream(value) >> inum;
        else if (parname == "rates_f")        initialize_arrayparam(inum, value, "inum", rates_f);
        else if (parname == "syn")            std::stringstream(value) >> syn;
        else if (parname == "beta")           std::stringstream(value) >> beta;
        else if (parname != "") {
            std::cout << "Error in config file: unknown parameter name: " + parname;
            exit(0);
        }
    }
}

void Parameters::
print( Msgr& msgr ) const
{
    msgr.print("Parameters: ", 1);
    msgr.print("workingDir_in: " + workingDir_in);
    msgr.print("workingDir_out: " + workingDir_out);
    msgr.print<true>("RUN_ini = %d", RUN_ini);
    msgr.print<true>("RUN_end = %d", RUN_end);
    msgr.print<true>("nthreads = %d", nthreads);
    msgr.print<true>("resume = %d", int(resume));
    msgr.print<true>("Niter = %d", Niter);
    msgr.print<true>("logfreq = %d", logfreq);
    msgr.print<true>("detailedfreq = %d", detailedfreq);
    msgr.print<true>("finaldetailed = %d", int(finaldetailed));
    msgr.print<true>("savefreq = %d", savefreq);
    msgr.print_vector("Ntot ", Ntot); msgr.print<true>("");
    msgr.print<true>("dilution = %f", dilution);
    msgr.print<true>("inum = %d", inum);
    msgr.print_vector("rates_f ", rates_f); msgr.print<true>("");
    msgr.print<true>("syn = %f", syn);
    msgr.print<true>("beta = %d", beta);
}

template<typename K>
void Parameters::
initialize_arrayparam( const szt len,
                       std::string value,
                       const std::string& parname,
                       std::vector<K>& par )
{
    if (len < 1) {
        std::cout << "Error in config file: " + parname + " should be initialized before" << std::endl;
        exit(0);
    }
    par.resize(len);
    const std::string emp {" "}, tab {"\t"};
    for (szt j=0; j<len; j++) {
        ulong e {value.find(emp)};
        if (e == std::string::npos) e = value.find(tab);
        if (e == std::string::npos) e = value.length();
        const std::string val {value.substr(0, e)};
        if (val.length() < 1) {
            std::cout << "Error in config file: Number of elelments in " + parname + " is smaller than "
                      << len << std::endl;
            exit(0);
        }
        std::stringstream(val) >> par[j];
        value.erase( 0, e );
        while( !value.substr(0, 1).compare(emp) ||
               !value.substr(0, 1).compare(tab) )
            value.erase(value.begin());
    }
}

// if the line contains a valid parname-value combination, returns true and combination, otherwise retruns false
bool Parameters::
preprocess_line( std::ifstream& config,
                 std::string& parname,
                 std::string& value )
{
    const std::string emp {" "}, tab {"\t"};
    std::string line;
    getline(config, line);
    ulong commentpos {line.find_first_of('#')};
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
    if (     line.find_first_of(emp) == std::string::npos && line.find_first_of(tab) != std::string::npos) parnameend = (int)line.find_first_of(tab);
    else if (line.find_first_of(emp) != std::string::npos && line.find_first_of(tab) == std::string::npos) parnameend = (int)line.find_first_of(emp);
    else if (line.find_first_of(emp) != std::string::npos && line.find_first_of(tab) != std::string::npos) parnameend = std::min( (int)line.find_first_of(emp),
                                                                                                                                  (int)line.find_first_of(tab) );
    parname = line.substr(0, (size_t)parnameend);

    value = line.substr(line.find_last_of("=")+1);
    while ( !value.substr(0, 1).compare(emp) ||
            !value.substr(0, 1).compare(tab) )
        value.erase(value.begin());

    return true;
}

}   // namespace MosaicSC
