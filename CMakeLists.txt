cmake_minimum_required(VERSION 3.10)

set(PACKAGE_NAME "sicxe")
set(PACKAGE_VERSION "1.0.0")
set(PACKAGE_STRING "${PACKAGE_NAME} ${PACKAGE_VERSION}")
set(PACKAGE_TARNAME "${PACKAGE_NAME}-${PACKAGE_VERSION}")
project(${PACKAGE_NAME} C CXX)

## compiler settings
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wshadow -Wextra")

# include header files from the src root
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -iquote ${PROJECT_SOURCE_DIR}/src")

if (CMAKE_BUILD_TYPE STREQUAL "Debug")
    message("build type ===> Debug")
    add_subdirectory(src)
    add_subdirectory(tests)
    add_subdirectory(src/third-party/googletest)
else ()
    message("build type ===> Release")
    add_subdirectory(src)
endif ()
