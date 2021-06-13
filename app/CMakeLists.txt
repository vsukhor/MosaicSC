    add_executable(mosaicsc main.cpp)

    target_include_directories(mosaicsc PUBLIC
                                ../include
                                ../external)

    target_link_libraries(mosaicsc PRIVATE ${CMAKE_THREAD_LIBS_INIT})
    target_link_libraries(mosaicsc PRIVATE $<TARGET_FILE:utils>)
    target_link_libraries(mosaicsc PRIVATE $<TARGET_FILE:MosaicSC_lib>)

    add_custom_command(
        TARGET mosaicsc
        POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy $<TARGET_FILE:mosaicsc> ${CMAKE_CURRENT_SOURCE_DIR}
    )

