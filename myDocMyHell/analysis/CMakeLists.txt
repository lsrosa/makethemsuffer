find_package(LLVM REQUIRED CONFIG)

message(STATUS ${LLVM_DEFINITIONS})
add_definitions(${LLVM_DEFINITIONS})

include_directories(${LLVM_INCLUDE_DIRS})
message(STATUS ${LLVM_INCLUDE_DIRS})

link_directories(${LLVM_LIBRARY_DIRS})
message(STATUS ${LLVM_LIBRARY_DIRS})

message(STATUS ${LLVM_INSTALL_PREFIX})

set(PASS_NAME accelerator-analysis)
add_subdirectory(${PASS_NAME})
