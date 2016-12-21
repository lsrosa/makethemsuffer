CC=clang

GPP_NAME=base
IOC_NAME=IOC

SRC_DIR = src
BUILD_DIR = build
BIN_DIR = bin

#gets all benchmarks and its types of implementations
BENCHS = $(sort $(wildcard $(SRC_DIR)/*/*))

#name of directories for the object, intermediate and aux files
OBJ_DIRS = $(patsubst $(SRC_DIR)%, $(BUILD_DIR)%, $(BENCHS))
BIN_DIRS = $(patsubst $(SRC_DIR)%, $(BIN_DIR)%, $(BENCHS))

#GPP sources
GPP_SRC = $(wildcard $(SRC_DIR)/*/$(GPP_NAME)/*.c)
GPP_OBJ = $(patsubst $(SRC_DIR)%.c, $(BUILD_DIR)%.o, $(GPP_SRC))
GPP_BIN = $(patsubst $(SRC_DIR)%.c, $(BIN_DIR)%, $(GPP_SRC))

#IOC rouces
IOC_SRC = $(wildcard $(SRC_DIR)/*/$(IOC_NAME)/*.c)
IOC_OBJ = $(patsubst $(SRC_DIR)%.c, $(BUILD_DIR)%.o, $(IOC_SRC))
ICO_BIN = $(patsubst $(SRC_DIR)%.c, $(BIN_DIR)%.o, $(IOC_SRC))

#-----------------------------------------------------
#------------- compilation ---------------------------
all:.obj_dir .bin_dir $(GPP_BIN) #$(IOC_OBJ)
	@echo $(GPP_BIN)

# GPP binaries
$(GPP_BIN): $(BIN_DIR)/%:$(BUILD_DIR)/%.o
	$(CC) -o $@ $^ $(CFLAGS)

# GPP objects
$(GPP_OBJ): $(BUILD_DIR)/%.o:$(SRC_DIR)/%.c
	$(CC) -o $@ -c $^ $(CFLAGS)


# IOC objects
$(IOC_OBJ): $(BUILD_DIR)/%.o:$(SRC_DIR)/%.c
	$(CC) -o $@ $^ $(CFLAGS)


#-----------------------------------------------------
#------------- compilation ---------------------------
#make directory for objects
.obj_dir:
	mkdir -p $(OBJ_DIRS)

.bin_dir:
	mkdir -p $(BIN_DIRS)

clean:
	rm -rf	$(BUILD_DIR) \
					$(BIN_DIR)

.SILENT: .obj_dir .bin_dir
