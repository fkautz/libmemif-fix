cmake_minimum_required(VERSION 3.10)
project(memif C)
project(memif_private C)

include(CheckFunctionExists)

set(CMAKE_C_STANDARD 11)

check_function_exists(memfd_create HAVE_MEMFD_CREATE)

include_directories(${CMAKE_SOURCE_DIR})

CONFIGURE_FILE(${CMAKE_CURRENT_SOURCE_DIR}/config.h.in ${CMAKE_CURRENT_BINARY_DIR}/config.h)

add_library(memif SHARED socket.h memif_private.h memif.h libmemif.h main.c socket.c)

install(TARGETS memif DESTINATION lib)
install(FILES libmemif.h DESTINATION include)
