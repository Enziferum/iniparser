cmake_minimum_required(VERSION 3.8)
project(inih)

option(BUILD_TESTS "Do build tests?" OFF)
option(BUILD_EXAMPLES "Do build examples?" OFF)

set(SRC src/ini.c
        src/INIReader.cpp)

add_library(inih STATIC ${SRC})
target_include_directories(${PROJECT_NAME} PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include)

if(BUILD_TESTS)
    add_subdirectory(tests)
endif()

if(BUILD_EXAMPLES)
    add_subdirectory(examples)
endif()