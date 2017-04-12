CMAKE_MINIMUM_REQUIRED(VERSION 3.5)

project(Synthetic_MakeThemSuffer)

if(CMAKE_C_COMPILER_ID STREQUAL "GNU")
	if(CMAKE_C_COMPILER_VERSION VERSION_LESS 4.8.0)
		message(STATUS "GCC should be version 4.8.0 or greater, alterado")
	endif()
else()
	message(FATAL_ERROR "Use GCC as C complimer")
endif()

find_package(LLVM REQUIRED CONFIG)

message(STATUS ${LLVM_INSTALL_PREFIX})

message(STATUS ${LLVM_DEFINITIONS})
add_definitions(${LLVM_DEFINITIONS})

include_directories(${LLVM_INCLUDE_DIRS})
message(STATUS ${LLVM_INCLUDE_DIRS})

link_directories(${LLVM_LIBRARY_DIRS})
message(STATUS ${LLVM_LIBRARY_DIRS})

add_subdirectory(passes)
add_subdirectory(codeTemplates)
add_subdirectory(programs)
