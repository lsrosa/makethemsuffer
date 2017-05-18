CMAKE_MINIMUM_REQUIRED(VERSION 3.5)

project(MyDocMyHell)

if(CMAKE_C_COMPILER_ID STREQUAL "GNU")
	if(CMAKE_C_COMPILER_VERSION VERSION_LESS 4.8.0)
		message(STATUS "GCC should be version 4.8.0 or greater, alterado")
	endif()
else()
	message(FATAL_ERROR "Use GCC as C complimer")
endif()

add_subdirectory(analysis)
add_subdirectory(tests)
