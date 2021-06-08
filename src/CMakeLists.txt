add_library(MosaicSC_lib STATIC
            base_component.cpp
            c1.cpp
            c2.cpp
            c3.cpp
            c4.cpp
            io.cpp
            parameters.cpp
            potts.cpp)

include_directories(MosaicSC_lib PUBLIC
                    ../include
                    ../external)

