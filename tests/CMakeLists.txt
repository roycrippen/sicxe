set(GTEST_DIR ${PROJECT_SOURCE_DIR}/src/third-party/googletest)
file(GLOB SOURCES *.cc)
file(COPY testdata DESTINATION ${CMAKE_CURRENT_BINARY_DIR})

include_directories(${GTEST_DIR}/include)
link_directories(${GTEST_DIR}/lib)

add_executable(sicxe_tests EXCLUDE_FROM_ALL ${SOURCES})
target_link_libraries(sicxe_tests "gtest" "gtest_main" "pthread"
        assembler_lib linker_lib common_lib)

add_custom_target(my_tests
        COMMAND ${CMAKE_CURRENT_BINARY_DIR}/sicxe_tests
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})

add_dependencies(my_tests sicxe_tests)
