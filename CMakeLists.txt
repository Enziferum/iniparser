cmake_minimum_required(VERSION 3.8)
project(inih)

option(BUILD_TESTS "Do build tests?" OFF)
option(BUILD_EXAMPLES "Do build examples?" OFF)

set(SRC src/ini.c
        src/INIReader.cpp)

add_library(inih STATIC ${SRC})
target_include_directories(${PROJECT_NAME} PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include)

set_target_properties(inih PROPERTIES
        ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/dist/lib
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/dist/bin
        LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/dist/bin
        )

install(TARGETS inih
        LIBRARY DESTINATION lib
        ARCHIVE DESTINATION lib
        RUNTIME DESTINATION bin
        PUBLIC_HEADER DESTINATION include/inih
        )

if(BUILD_TESTS)
    add_subdirectory(tests)
endif()

if(BUILD_EXAMPLES)
    add_subdirectory(examples)
endif()