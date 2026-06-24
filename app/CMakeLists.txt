set(execname mosaicsc)
add_executable(${execname} main.cpp)

target_include_directories(${execname} PUBLIC ${PROJECT_SOURCE_DIR}/include)

target_compile_definitions(${execname} PRIVATE
    # If the debug configuration pass the DEBUG define to the compiler
    $<$<CONFIG:Debug>: -DDEBUG>
)

if(MOSAICSC_USE_CUDA)
    # built with -dc to enable cross_file linking of device code.
    set_target_properties(${execname} PROPERTIES CUDA_SEPARABLE_COMPILATION ON)
    target_compile_options(${execname} PRIVATE
        $<$<COMPILE_LANGUAGE:CUDA>:
        --generate-line-info
        --use_fast_math
        --relocatable-device-code=true
        >
    )
    set_target_properties(${execname} PROPERTIES POSITION_INDEPENDENT_CODE ON)
    target_compile_options(${execname} PUBLIC
        $<$<COMPILE_LANGUAGE:CUDA>:
        --expt-relaxed-constexpr
        >
    )
    target_compile_definitions(${execname} PUBLIC -DMOSAICSC_USE_CUDA)
    target_link_libraries(${execname} PRIVATE
                          CUDA::cudart
                          CUDA::cuda_driver
                          CUDA::curand
    )
endif(MOSAICSC_USE_CUDA)

target_link_libraries(${execname} PRIVATE ${CMAKE_THREAD_LIBS_INIT})
target_link_libraries(${execname} PRIVATE $<TARGET_FILE:mosaicsclib>)

add_custom_command(
    TARGET ${execname}
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy $<TARGET_FILE:${execname}>
                                     ${CMAKE_CURRENT_SOURCE_DIR}
)
