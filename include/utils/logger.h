#ifndef MOSAICSC_UTILS_LOGGER_H
#define MOSAICSC_UTILS_LOGGER_H

#include "utils/msgr.h"
#include "utils/colorcodes.h"

#include <ostream>  // std::cerr
#include <cstdlib>  // std::exit

inline thread_local mosaicsc::utils::Msgr* msgr {};  ///< Output message processor.

/// Output message processor.
//static thread_local auto msgr {
//    std::make_unique<utils::Msgr>(&std::cout, nullptr, 6)
//};

template<bool endline=true,
         typename ...Args>
static void jot(Args... args)
{
    if (msgr)
        msgr->print<endline>(args...);
    else
        std::cerr << "Error: msgr is NULL" << std::endl;
}

template<typename ...Args>
static void abort(Args... args)
{
    if (msgr)
        msgr->print(args...);
    else
        std::cerr << "Error: msgr is NULL" << std::endl;

    std::exit(EXIT_FAILURE);
}

template<typename ...Args>
static void warn(Args... args)
{
    jot(mosaicsc::utils::Colorcodes::RED, "WARNING: ",
        mosaicsc::utils::Colorcodes::RESET, args...);
}

template<typename ...Args>
static void warn_if(const bool condition,
                    Args... args)
{
    if (condition)
        warn(args...);
}

#ifdef DEBUG
    #undef ASSERT
    #define ASSERT(EX, ...) \
        (void)((EX) || (utils::failure_message(#EX, std::source_location::current()  __VA_OPT__(,) __VA_ARGS__), 0))
#else
    #define ASSERT(EX, ...)
#endif


#ifdef DEBUG
    #undef ASSERT_CALLING
    #define ASSERT_CALLING(EX, FUN, ...) \
        (void)((EX) || (FUN, 0) || (utils::failure_message(#EX, std::source_location::current()  __VA_OPT__(,) __VA_ARGS__), 0))
#else
    #define ASSERT_CALLING(EX, ...)
#endif

#endif  // MOSAICSC_UTILS_LOGGER_H