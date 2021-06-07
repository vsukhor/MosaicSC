if(USE_GPU)
    add_definitions(-DPROCESSOR=1)
    add_executable(MosaicSC_GPU main.cpp)

    target_compile_features(MosaicSC_GPU PRIVATE cxx_std_20)

    target_include_directories(MosaicSC_GPU PUBLIC
                                ../include
                                ../external)

    target_link_libraries(MosaicSC_GPU PRIVATE Boost::boost)
    target_link_libraries(MosaicSC_GPU PRIVATE $<TARGET_FILE:utils>)
    target_link_libraries(MosaicSC_GPU PRIVATE $<TARGET_FILE:MosaicSC_lib>)

    add_custom_command(
        TARGET MosaicSC_GPU
        POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy $<TARGET_FILE:MosaicSC_GPU> ${CMAKE_CURRENT_SOURCE_DIR}
    )

else()
    add_definitions(-DPROCESSOR=0)
    add_executable(MosaicSC_CPU main.cpp)

    target_compile_features(MosaicSC_CPU PRIVATE cxx_std_20)

    target_include_directories(MosaicSC_CPU PUBLIC
                                ../include
                                ../external)

    target_link_libraries(MosaicSC_CPU PRIVATE Boost::boost)
    target_link_libraries(MosaicSC_CPU PRIVATE $<TARGET_FILE:utils>)
    target_link_libraries(MosaicSC_CPU PRIVATE $<TARGET_FILE:MosaicSC_lib>)

    add_custom_command(
        TARGET MosaicSC_CPU
        POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy $<TARGET_FILE:MosaicSC_CPU> ${CMAKE_CURRENT_SOURCE_DIR}
    )
endif()

