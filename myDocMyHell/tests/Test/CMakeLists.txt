#get all files in the source directory
file(GLOB SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/*.c)

#separete the file names
get_filename_component(TRGT ${SOURCES} NAME_WE)

#---------------------------------------------------------------
#--Usefull variable --------------------------------------------
#-----------from the Framework----------------------------------
#gets the pass dir name
# do not forget to append ".so" to the variable name
get_directory_property(
	PASS_NAME
    DIRECTORY ${CMAKE_SOURCE_DIR}/analysis
    DEFINITION PASS_NAME
)

#gets the library name the pass were built in,
get_directory_property(
	LIB_BUILT_NAME
    DIRECTORY ${CMAKE_SOURCE_DIR}/analysis/${PASS_NAME}
    DEFINITION LIB_BUILT_NAME
)

set(CMAKE_C_COMPILER clang)
#---------------------------------------------------------------
#---------------------------------------------------------------
#---------------------------------------------------------------

add_custom_target(${TRGT} ALL
	DEPENDS ${TRGT}.o ${TRGT}.ll ${TRGT}_opt.ll
	COMMAND echo ${CMAKE_SOURCE_DIR} ${PASS_NAME} ${LIB_BUILT_NAME}
	COMMAND ${CMAKE_C_COMPILER} build/objs/${TRGT}.o -o ${TRGT}
	)

	# creates TRGT.o
	add_custom_command(OUTPUT ${TRGT}.o
		COMMAND mkdir -p build/objs
		COMMAND ${CMAKE_C_COMPILER}
			-c ${CMAKE_CURRENT_SOURCE_DIR}/${TRGT}.c
			-o build/objs/${TRGT}.o
		)

	#applies the optmizarion we made on passes/loop1
	add_custom_command(OUTPUT ${TRGT}_opt.ll
		DEPENDS ${TRGT}.ll
		COMMAND mkdir -p build/opt
		COMMAND opt -load=${CMAKE_BINARY_DIR}/analysis/${PASS_NAME}/${LIB_BUILT_NAME}.so
				-${PASS_NAME} build/ir/${TRGT}.ll -o build/opt/${TRGT}_opt.ll
		)

	#creates TRGT.ll
	add_custom_command(OUTPUT ${TRGT}.ll
		COMMAND mkdir -p build/ir
		COMMAND ${CMAKE_C_COMPILER}
			-S -emit-llvm -g
			${CMAKE_CURRENT_SOURCE_DIR}/${TRGT}.c
			-o build/ir/${TRGT}.ll
		#commands to make the CFGs
		#COMMAND mkdir -p build/graphs
		#COMMAND opt -dot-cfg build/ir/${TRGT}.ll
		#COMMAND mv *.dot build/graphs/
		#COMMAND dot -Tpng -y -O build/graphs/*.dot
		)
#add_executable(${TRGT} ${CMAKE_CURRENT_SOURCE_DIR}/${TRGT}.cpp)
#include_directories("${CMAKE_BINARY_DIR}/analysis/${PASS_NAME}/")
#target_link_libraries(${TRGT} ${LIB_BUILT_NAME})
#target_compile_features(${TRGT} PRIVATE cxx_range_for cxx_auto_type)
#set_target_properties(${TRGT} PROPERTIES
#    COMPILE_FLAGS "-fno-rtti"
#)
