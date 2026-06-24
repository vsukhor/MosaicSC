cmake_minimum_required(VERSION 4.2)

project(MosaicSC
    VERSION 0.9.1
    DESCRIPTION
    "Simulation of space-embedded molecular aggregates using Potts model"
    LANGUAGES CXX)

add_compile_options("-std=c++20" "-Wall" "-Wextra" "-fexceptions")
if(CMAKE_BUILD_TYPE==Debug)
    add_compile_options("-O0;-g3;-ggdb")
elseif(CMAKE_BUILD_TYPE==Release)
    add_compile_options("-O3; -march=native")
endif()

if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)

    # Let's ensure -std=c++xx instead of -std=g++xx
    set(CMAKE_CXX_EXTENSIONS OFF)
    set(CMAKE_VERBOSE_MAKEFILE OFF)

    # Let's nicely support folders in IDE's
    set_property(GLOBAL PROPERTY USE_FOLDERS ON)

endif()

# Upload computations to gpu with cuda (rng only)
if(MOSAICSC_USE_CUDA)
    message("Using CUDA")
    find_package(CUDAToolkit REQUIRED)
    set(CMAKE_POSITION_INDEPENDENT_CODE ON)
    #set(CMAKE_CUDA_ARCHITECTURES 75 80 86 87 89 90 100 110 120)
    set(CMAKE_CUDA_ARCHITECTURES 86 87)
    set(CMAKE_CUDA_FLAGS
        "${CMAKE_CUDA_FLAGS} -Wno-deprecated-gpu-targets --expt-relaxed-constexpr -rdc=true")
    if(ENABLE_CUDA_DEBUG)
        # enable cuda-gdb (may significantly affect performance on some targets)
        set(CMAKE_CUDA_FLAGS "${CMAKE_CUDA_FLAGS} -G")
    else()
        # add line info to all builds for debug tools (exclusive to -G option)
        set(CMAKE_CUDA_FLAGS "${CMAKE_CUDA_FLAGS} -lineinfo")
    endif()
endif(MOSAICSC_USE_CUDA)

find_package(Threads REQUIRED)

add_subdirectory(src)
add_subdirectory(app)  # The executable code is here
