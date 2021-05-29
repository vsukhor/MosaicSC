add_executable(MosaicSC_CPU main)
target_compile_features(MosaicSC_CPU PRIVATE cxx_std_17)

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
