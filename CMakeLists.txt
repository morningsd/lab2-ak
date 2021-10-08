
cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_STANDARD 14)

project(MyProject)

add_library(factorial
	include/factorial.hpp
	src/factorial.cpp
)


target_include_directories(
	factorial
	PUBLIC
		"include"
)

add_executable(demo
  src/main.cpp
)

target_link_libraries(demo factorial)
