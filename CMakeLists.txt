cmake_minimum_required(VERSION 3.17)

project(MosaicSC
    VERSION 0.7.1
    DESCRIPTION "Simulation of space-embedded molecular aggregates"
    LANGUAGES CXX)

option(USE_GPU "Enables use of GPU via CUDA." OFF) # use CPU by default
if(USE_GPU)
    enable_language(CUDA)
endif()

if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)

    # Let's ensure -std=c++xx instead of -std=g++xx
    set(CMAKE_CXX_EXTENSIONS OFF)
    set(CMAKE_VERBOSE_MAKEFILE OFF)

    # Let's nicely support folders in IDE's
    set_property(GLOBAL PROPERTY USE_FOLDERS ON)

endif()

add_compile_options(-O3 -msse4)

# FetchContent downloads during the configure step
# include(FetchContent)

find_package(Boost REQUIRED)

add_subdirectory(external)

add_subdirectory(src)

# The executable code is here:
add_subdirectory(app)




