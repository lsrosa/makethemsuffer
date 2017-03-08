
#configure the files in the build dir
configure_file(${CMAKE_SOURCE_DIR}/codeTemplates/CodeTemplate.cpp.in CodeTemplate.cpp)

configure_file(${CMAKE_SOURCE_DIR}/codeTemplates/CodeTemplate.h.in CodeTemplate.h)

#select se classes and headers configured above
FILE(GLOB codetemplate_src ${CMAKE_CURRENT_BINARY_DIR}/*.cpp ${CMAKE_CURRENT_BINARY_DIR}/*.h)
#selects the Code templates and headers
FILE(GLOB templates_srcs *.cpp *.h)

FILE(GLOB codes_srcs *.code)
#message(STATUS ${codes_srcs})

foreach(file ${codes_srcs})
  get_filename_component(fname ${file} NAME_WE)
  list (APPEND codes_ll ${CMAKE_CURRENT_BINARY_DIR}/${fname}.ll)
endforeach()

message(STATUS ${codes_ll})
#applies the optmizarion we made on passes/loop1
add_custom_command(OUTPUT ${codes_ll}
	COMMAND clang++ -x c++ -c ${codes_srcs} -S -emit-llvm
)

add_custom_target(ll_files ALL
  DEPENDS ${codes_ll}
)

include_directories(${CMAKE_SOURCE_DIR}/codeTemplates)
include_directories(${CMAKE_BINARY_DIR}/codeTemplates)
add_library(CodeTemplate ${templates_srcs} ${codetemplate_src})

#make sure the .ll files wil be compiled before the CodeTemplate
add_dependencies(CodeTemplate ll_files)

# Use C++11 to compile our pass (i.e., supply -std=c++11).
target_compile_features(CodeTemplate PRIVATE cxx_range_for cxx_auto_type)

# LLVM is (typically) built with no C++ RTTI. We need to match that;
# otherwise, we'll get linker errors about missing RTTI data.
set_target_properties(CodeTemplate PROPERTIES
    COMPILE_FLAGS "-fno-rtti"
)
