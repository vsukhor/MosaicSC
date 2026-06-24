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

#include "mosaicsc/definitions.h"
#include "mosaicsc/parameters.h"

#include "utils/logger.h"
#include "utils/misc.h"

#include <filesystem>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

namespace mosaicsc {

Parameters::
Parameters(const path& configFile)
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
    if (config.fail())
        utils::exit("Cannot open file: "s + file.string());

    config.clear();
    config.seekg(0, std::ios::beg);
    while (config.good()) {
        if (!preprocess_line(config, parname, value))
            continue;
        if (     parname == "runFirst")        sstr(value) >> runFirst;
        else if (parname == "runLast")        sstr(value) >> runLast;
        else if (parname == "nthreads")       sstr(value) >> nthreads;
        else if (parname == "resume")         sstr(value) >> resume;
        else if (parname == "nsteps")          sstr(value) >> nsteps;
        else if (parname == "logfreq")        sstr(value) >> logfreq;
        else if (parname == "detailedfreq")   sstr(value) >> detailedfreq;
        else if (parname == "finaldetailed")  sstr(value) >> finaldetailed;
        else if (parname == "savefreq")       sstr(value) >> savefreq;
        else if (parname == "nparticles")
            initialize_arrayparam(numBasicTypes, value, "numBasicTypes", nparticles);
        else if (parname == "dilution")       sstr(value) >> dilution;
        else if (parname == "inum")           sstr(value) >> inum;
        else if (parname == "rates_f")
            initialize_arrayparam(inum, value, "inum", rates_f);
        else if (parname == "syn")            sstr(value) >> syn;
        else if (parname == "beta")           sstr(value) >> beta;
        else if (parname != "")
            utils::exit("Error in config file: unknown parameter name: "s +
                        parname);
    }
}

void Parameters::
print() const
{
    jot("Parameters: ");
    jot("workingDir_in: ", workingDir_in);
    jot("workingDir_out: ", workingDir_out);
    jot("runFirst = ", runFirst);
    jot("runLast = ", runLast);
    jot("nthreads = ", nthreads);
    jot("resume = ", resume);
    jot("nsteps = ", nsteps);
    jot("logfreq = ", logfreq);
    jot("detailedfreq = ", detailedfreq);
    jot("finaldetailed = ", finaldetailed);
    jot("savefreq = ", savefreq);
    msgr->print_vector("nparticles ", nparticles);
    jot("dilution = ", dilution);
    jot("inum = ", inum);
    msgr->print_vector("rates_f ", rates_f);
    jot("syn = ", syn);
    jot("beta = ", beta);
#ifdef DEBUG
    warn("Configuratin DEBUG");
#else
    jot("Configuration Release");
#endif
#if MOSAICSC_USE_CUDA
    jot("Using CUDA rng");
#else
    jot("Using STD rng");
#endif
}

template<typename K>
void Parameters::
initialize_arrayparam( const szt len,
                       std::string value,
                       const std::string& parname,
                       std::vector<K>& par )
{
    if (len < 1)
        utils::exit("Error in config file: "s + parname +
                    " should be initialized before");

    par.resize(len);
    const std::string emp {" "}, tab {"\t"};
    for (szt j=0; j<len; j++) {
        auto e {value.find(emp)};
        if (e == std::string::npos) e = value.find(tab);
        if (e == std::string::npos) e = value.length();
        const auto val {value.substr(0, e)};
        if (val.length() < 1)
            utils::exit("Error in config file: Number of elelments in "s +
                        parname + " is smaller than " + std::to_string(len));
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


std::string_view Parameters::
check() const noexcept
{
    if (runFirst > runLast)
        return "Error: [runFirst] > [runLast] : "s +
               "Index of the first run should not exceed index of the last run)";

    if (!utils::is_defined(nthreads))
        return "Error: [nthreads] is huge of negative: should be finite positive";

    if (!utils::is_defined(logfreq))
        return "Error: [logfreq] is huge of negative: should be finite positive";

    if (!utils::is_defined(detailedfreq))
        return "Error: [detailedfreq] is huge of negative: should be finite positive";

    if (!utils::is_defined(finaldetailed))
        return "Error: [finaldetailed] is huge of negative: should be finite positive";

    if (!utils::is_defined(savefreq))
        return "Error: [savefreq] is huge of negative: should be finite positive";

    if (!utils::is_defined(nsteps))
        return "Error: [nsteps] is huge of negative: should be finite positive";

    return "";
}

}   // namespace mosaicsc
