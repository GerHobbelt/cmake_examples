cmake_minimum_required(VERSION 3.10)
project(hello C)

set(CMAKE_BUILD_TYPE Release)
set(CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/install")
add_library(hello SHARED hello.c)
target_compile_definitions(hello PRIVATE HELLO_EXPORT_SYMBOLS)
target_compile_options(hello PRIVATE -fvisibility=hidden)

install(FILES hello.h DESTINATION include/hello)
install(TARGETS hello
  EXPORT hello
  DESTINATION lib
  INCLUDES DESTINATION include
)
install(EXPORT hello
  DESTINATION cmake/hello
  FILE hello-config.cmake
)