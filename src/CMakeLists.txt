add_library(MosaicSC_lib STATIC
            base_component.cpp
            c1.cpp
            c2.cpp
            c3.cpp
            c4.cpp
            io.cpp
            parameters.cpp
            potts.cpp)

target_compile_features(MosaicSC_lib PRIVATE cxx_std_17)
target_include_directories(MosaicSC_lib PUBLIC
                    ../include
                    ../external
                    /usr/local/include)

