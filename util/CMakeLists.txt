include(../cmake/SetupLib.cmake)
include(../cmake/SetupTestDir.cmake)
include(../cmake/SetupExampleDir.cmake)

LucidRift_Rivot_setup_lib(${CMAKE_CURRENT_SOURCE_DIR})
LucidRift_Rivot_setup_test_dir(${CMAKE_CURRENT_SOURCE_DIR}/test/)
LucidRift_Rivot_setup_example_dir(${CMAKE_CURRENT_SOURCE_DIR}/example/ util ${PROJECT_NAME}_util)
