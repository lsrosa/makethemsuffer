#remove the "-" in the pass name
string(REPLACE "-" "" LIB_NAME ${PASS_NAME})
#set(LIB_NAME Loop2Pass)

Set(LIB_BUILT_NAME ${LIB_NAME})

get_directory_property(
	PASS_NAME
    DIRECTORY ${CMAKE_SOURCE_DIR}/passes
    DEFINITION PASS_NAME
)

#this generates the ${PASS_NAME}.cpp file from the .cpp.in file
#by substituting the <${VAR}> on file by the value of ${VAR} in the current CMAKE
configure_file(${CMAKE_SOURCE_DIR}/passes/${PASS_NAME}/${PASS_NAME}.cpp.in ${PASS_NAME}.cpp)

configure_file(${CMAKE_SOURCE_DIR}/passes/${PASS_NAME}/${PASS_NAME}.h.in ${PASS_NAME}.h)

include_directories(${CMAKE_SOURCE_DIR}/codeTemplates)
include_directories(${CMAKE_BINARY_DIR}/codeTemplates)

#--------------------important-------------------------------------
# add_library() looks for files in the SOURCE DIRECTORY,
# while configure_file() reads and writes in the BUILD DIRECTORY
# this is why we pass the path to source in the configure_file()
# ans the path to build to add_library()
#--------------------end important----------------------------------

#this line compiles the .cpp file into a system object file (.so)
add_library(${LIB_NAME} ${CMAKE_CURRENT_BINARY_DIR}/${PASS_NAME}.cpp)
target_link_libraries(${LIB_NAME} LLVMCore LLVMIRReader)
# Use C++11 to compile our pass (i.e., supply -std=c++11).
target_compile_features(${LIB_NAME} PRIVATE cxx_range_for cxx_auto_type)

# LLVM is (typically) built with no C++ RTTI. We need to match that;
# otherwise, we'll get linker errors about missing RTTI data.
set_target_properties(${LIB_NAME} PROPERTIES
    COMPILE_FLAGS "-fno-rtti"
)
