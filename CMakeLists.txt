project(LucidRift_Rivot)
cmake_minimum_required(VERSION 3.2)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_C_STANDARD 17)

function(LucidRift_Rivot_init_lib LIB_NAME)
    add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/${LIB_NAME})
endfunction()

LucidRift_Rivot_init_lib(util)
