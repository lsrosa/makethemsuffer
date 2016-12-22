CC=clang
CXX=g++

GPP_NAME=base
IOC_NAME=IOC

SRC_DIR = src
BUILD_DIR = build

#gets all benchmarks and its types of implementations
BENCHS = $(sort $(wildcard $(SRC_DIR)/*/*))

#name of directories for the object, intermediate and binary files
BUILD_DIRS = $(patsubst $(SRC_DIR)%, $(BUILD_DIR)%, $(BENCHS))

#-----------------------------------------------------
#------------- GPP sources and binaries names --------
GPP_SRC = $(wildcard $(SRC_DIR)/*/$(GPP_NAME)/*.c)
GPP_BIN = $(patsubst $(SRC_DIR)%.c, $(BUILD_DIR)%, $(GPP_SRC))

#-----------------------------------------------------
#---- IOC sources, binaries names and definitions ----
#IOC sources
IOC_HOST = $(wildcard $(SRC_DIR)/*/$(IOC_NAME)/host/*.cpp)
IOCBIN = $(patsubst $(SRC_DIR)%.cpp, $(BUILD_DIR)%, $(IOC_HOST))
IOC_BIN = $(subst host/,, $(IOCBIN))
ICO_BIN_DIR=$(dir $(IOC_BIN))
IOC_HOST_DIR=$(subst host/,, $(dir $(IOC_HOST)))

IOC_KERNEL = $(wildcard $(SRC_DIR)/*/$(IOC_NAME)/device/*.cl)

# OpenCL compile and link flags.
AOCL_COMPILE_CONFIG := $(shell aocl compile-config)
AOCL_LINK_CONFIG := $(shell aocl link-config)
# Where is the Altera SDK for OpenCL software?
ifeq ($(wildcard $(ALTERAOCLSDKROOT)),)
$(error Set ALTERAOCLSDKROOT to the root directory of the Altera SDK for OpenCL software installation)
endif
ifeq ($(wildcard $(ALTERAOCLSDKROOT)/host/include/CL/opencl.h),)
$(error Set ALTERAOCLSDKROOT to the root directory of the Altera SDK for OpenCL software installation.)
endif

CXXFLAGS += -O2

# Directories
INC_DIRS := IOCcommon/common/inc
LIB_DIRS :=

INCS := $(wildcard )
LIBS :=
#-----------------------------------------------------
#------------- compilation ---------------------------
all: .build_dir $(IOC_BIN) #$(GPP_BIN)
	@echo $(A) $(B)

#-----------------------------------------------------
#------------- GPP compilation -----------------------
$(GPP_BIN): $(BUILD_DIR)/%:$(SRC_DIR)/%.c
	$(CC) -o $@ -c $^ $(CFLAGS)

#-----------------------------------------------------
#------------- IOC compilation -----------------------
$(IOC_BIN): $(ICO_BIN_DIR)%:$(IOC_HOST_DIR)host/%.cpp
	@echo -c $^ 	-o $@
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -fPIC $(foreach D,$(INC_DIRS),-I$D) \
		$(AOCL_COMPILE_CONFIG) $^ $(wildcard IOCcommon/common/src/AOCLUtils/*.cpp) $(AOCL_LINK_CONFIG) \
		$(foreach D,$(LIB_DIRS),-L$D) \
		$(foreach L,$(LIBS),-l$L) \
		-o $@


#-----------------------------------------------------
#------------- compilation ---------------------------
#make directory for objects if they are dont exist
.build_dir:
	mkdir -p $(BUILD_DIRS)

clean:
	rm -rf	$(BUILD_DIR)

.SILENT: .obj_dir .build_dir
