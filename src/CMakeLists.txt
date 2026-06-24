set(libname mosaicsclib)

add_library(${libname} STATIC
            c1.cpp
            c2.cpp
            c3.cpp
            c4.cpp
            io.cpp
            parameters.cpp
            potts.cpp)

target_include_directories(${libname} PUBLIC ${PROJECT_SOURCE_DIR}/include)
target_compile_definitions(${libname} PRIVATE
    # If the debug configuration pass the DEBUG define to the compiler
    $<$<CONFIG:Debug>: -DDEBUG>
)

if(MOSAICSC_USE_CUDA)
    # built with -dc to enable cross_file linking of device code.
    set_target_properties(${libname} PROPERTIES CUDA_SEPARABLE_COMPILATION ON)
    target_compile_options(${libname} PRIVATE
        $<$<COMPILE_LANGUAGE:CUDA>:
        --generate-line-info
        --use_fast_math
        --relocatable-device-code=true
        >
    )
    set_target_properties(${libname} PROPERTIES POSITION_INDEPENDENT_CODE ON)
    target_compile_options(${libname} PUBLIC
        $<$<COMPILE_LANGUAGE:CUDA>:
        --expt-relaxed-constexpr
        -rdc=true
        >
    )
    target_compile_definitions(${libname} PUBLIC -DMOSAICSC_USE_CUDA)
    target_link_libraries(${libname} PRIVATE
                          CUDA::cudart
                          CUDA::cuda_driver
                          CUDA::curand
    )
endif(MOSAICSC_USE_CUDA)
