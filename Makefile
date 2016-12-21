CC=clang

GPP_NAME=base
IOC_NAME=IOC

SRC_DIR = src
BUILD_DIR = build

#gets all benchmarks and its types of implementations
BENCHS = $(sort $(wildcard $(SRC_DIR)/*/*))

#name of directories for the object, intermediate and aux files
BIN_DIRS = $(patsubst $(SRC_DIR)%, $(BIN_DIR)%, $(BENCHS))

#GPP sources
GPP_SRC = $(wildcard $(SRC_DIR)/*/$(GPP_NAME)/*.c)
GPP_BIN = $(patsubst $(SRC_DIR)%.c, $(BIN_DIR)%, $(GPP_SRC))

#IOC rouces
IOC_HOST = $(wildcard $(SRC_DIR)/*/$(IOC_NAME)/host/*.cpp)
ICO_BIN = $(patsubst $(SRC_DIR)%.c, $(BIN_DIR)%.o, $(IOC_HOST))

IOC_KERNEL = $(wildcard $(SRC_DIR)/*/$(IOC_NAME)/host/*.cl)

#-----------------------------------------------------
#------------- compilation ---------------------------
all: .build_dir $(GPP_BIN)#$(IOC_OBJ) #$(GPP_BIN)
	@echo $(IOC_OBJ)

# GPP binaries
$(GPP_BIN): $(BIN_DIR)/%:$(SRC_DIR)/%.c
	$(CC) -o $@ $^ $(CFLAGS)

# IOC objects
$(IOC_OBJ): $(BUILD_DIR)/%.o:$(SRC_DIR)/%.c
	$(CC) -o $@ $^ $(CFLAGS)


#-----------------------------------------------------
#------------- compilation ---------------------------
#make directory for objects
.build_dir:
	mkdir -p $(BIN_DIRS)

clean:
	rm -rf	$(BUILD_DIR) \
					$(BIN_DIR)

.SILENT: .obj_dir .build_dir
