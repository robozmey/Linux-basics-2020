project(Fibonacci)

cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(Fibonacci src/main.cpp src/fast.cpp)

target_include_directories(Fibonacci PUBLIC "${PROJECT_SOURCE_DIR}/src")

enable_testing()

function(do_test target arg result)
  add_test(NAME Comp${arg} COMMAND ${target} ${arg})
  set_tests_properties(Comp${arg}
    PROPERTIES PASS_REGULAR_EXPRESSION ${result}
    )
endfunction(do_test)

# do a bunch of result based tests
do_test(Fibonacci 4 3)
do_test(Fibonacci 9 34)
do_test(Fibonacci 5 5)
do_test(Fibonacci 7 13)
