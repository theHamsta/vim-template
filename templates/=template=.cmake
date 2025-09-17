cmake_minimum_required(VERSION 3.20)
project(%HERE%%FDIR%)

if (MSVC)
    # warning level 4
    add_compile_options(/W4)
else()
    # additional warnings
    add_compile_options(-Wall -Wextra -Wpedantic)
endif()

add_executable(%FDIR%
    main.cpp
    )

set_target_properties(%FDIR% PROPERTIES
    CXX_STANDARD 20
    CXX_EXTENSIONS OFF
    )
