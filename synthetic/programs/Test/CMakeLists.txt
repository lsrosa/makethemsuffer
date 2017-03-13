#get all files in the source directory
file(GLOB SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp)

#separete the file names
get_filename_component(TRGT ${SOURCES} NAME_WE)

#---------------------------------------------------------------
#--Usefull variable --------------------------------------------
#-----------from the Framework----------------------------------
#gets the pass dir name
get_directory_property(
	PASS_NAME
    DIRECTORY ${CMAKE_SOURCE_DIR}/passes
    DEFINITION PASS_NAME
)

#gets the library name the pass were built in,
# do not forget to append ".so" to the variable name
get_directory_property(
	LIB_BUILT_NAME
    DIRECTORY ${CMAKE_SOURCE_DIR}/passes/${PASS_NAME}
    DEFINITION LIB_BUILT_NAME
)


set(CMAKE_C_COMPILER clang++)
#---------------------------------------------------------------
#---------------------------------------------------------------
#---------------------------------------------------------------

#include the templates
include_directories("${CMAKE_SOURCE_DIR}/codeTemplates")
include_directories("${CMAKE_BINARY_DIR}/codeTemplates")

#include the code manipulator that has been configured
include_directories("${CMAKE_BINARY_DIR}/passes/${PASS_NAME}")

add_executable(${TRGT} ${CMAKE_CURRENT_SOURCE_DIR}/${TRGT}.cpp)
target_link_libraries(${TRGT} CodeTemplate ${LIB_BUILT_NAME})


# Use C++11 to compile our pass (i.e., supply -std=c++11).
target_compile_features(${TRGT} PRIVATE cxx_range_for cxx_auto_type)

# LLVM is (typically) built with no C++ RTTI. We need to match that;
# otherwise, we'll get linker errors about missing RTTI data.
set_target_properties(${TRGT} PROPERTIES
    COMPILE_FLAGS "-fno-rtti"
)

SET(dis_files *.bc)
#applies the optmizarion we made on passes/loop1
add_custom_command(TARGET ${TRGT}
	#COMMAND rm output.bc
	COMMAND ./${TRGT}
	#COMMAND for f in ${dis_files}"\;" do llvm-dis ${f}"\;" done
)
