function(LucidRift_Rivot_setup_example_dir EXAMPLE_DIR SUB_PROJ_NAME LIBS)
    message(STATUS "Configuring example directory at '${EXAMPLE_DIR}'")
    file(GLOB EXAMPLE_SUBDIRS RELATIVE ${EXAMPLE_DIR} ${EXAMPLE_DIR}/*)

    foreach(EXAMPLE_SUBDIR ${EXAMPLE_SUBDIRS})
        file(GLOB_RECURSE SUB_FILES RELATIVE ${EXAMPLE_DIR} ${EXAMPLE_DIR}/${EXAMPLE_SUBDIR}/*.cxx ${EXAMPLE_DIR} ${EXAMPLE_DIR}/${EXAMPLE_SUBDIR}/*.hxx ${EXAMPLE_DIR} ${EXAMPLE_DIR}/${EXAMPLE_SUBDIR}/*.c ${EXAMPLE_DIR} ${EXAMPLE_DIR}/${EXAMPLE_SUBDIR}/*.h)
        set(SUB_FILES_EXACT "")

        foreach(SUB_FILE ${SUB_FILES})
            list(APPEND SUB_FILES_EXACT ${EXAMPLE_DIR}/${SUB_FILE})
        endforeach()

        if(SUB_FILES)
            message(STATUS "Configuring example '${EXAMPLE_SUBDIR}'")
            add_executable(${PROJECT_NAME}_${SUB_PROJ_NAME}_EXAMPLES_${EXAMPLE_SUBDIR} ${SUB_FILES_EXACT})
            target_link_libraries(${PROJECT_NAME}_${SUB_PROJ_NAME}_EXAMPLES_${EXAMPLE_SUBDIR} ${LIBS})
        endif()
    endforeach()
endfunction()
