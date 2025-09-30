cmake_minimum_required(VERSION 3.25)
project(demo)
add_executable(demo demo.cpp)

if(MSVC)
  target_link_options(demo PRIVATE "/STACK:8388608") # 8MB
endif()