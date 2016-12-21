SRC_DIR=src
BUILD_DIR=build
BIN_DIR=bin

#gets all benchmarks and its types of implementations
BENCHS=$(sort $(wildcard $(SRC_DIR)/*/*))

all:
	@echo $(a)

#make directory for objects
obj_dir:
	mkdir -p $(patsubst $(SRC_DIR)%, $(BUILD_DIR)%, $(BENCHS))
