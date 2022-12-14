function(LucidRift_Rivot_setup_lib LIB_PATH)
    get_filename_component(LIB_NAME ${LIB_PATH} NAME)
    message(STATUS "Configuring library for '${LIB_NAME}' from '${LIB_PATH}'")

    file(GLOB_RECURSE ${PROJECT_NAME}_C_SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.c)
    file(GLOB_RECURSE ${PROJECT_NAME}_CPP_SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cxx)
    file(GLOB_RECURSE ${PROJECT_NAME}_C_HEADERS ${CMAKE_CURRENT_SOURCE_DIR}/src/*.h)
    file(GLOB_RECURSE ${PROJECT_NAME}_CPP_HEADERS ${CMAKE_CURRENT_SOURCE_DIR}/src/*.hxx)

    add_library(${PROJECT_NAME}_${LIB_NAME} STATIC ${${PROJECT_NAME}_C_SOURCES} ${${PROJECT_NAME}_CPP_SOURCES} ${${PROJECT_NAME}_C_HEADERS} ${${PROJECT_NAME}_CPP_HEADERS})
    target_include_directories(${PROJECT_NAME}_${LIB_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

    add_library(${PROJECT_NAME}::${LIB_NAME} ALIAS ${PROJECT_NAME}_${LIB_NAME})
endfunction()
