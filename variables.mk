CC=clang
CXX=g++

GPP_NAME=base
IOC_NAME=IOC

SRC_DIR = src
BUILD_DIR = ../makethemsuffer_build

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

IOC_KERNEL = $(wildcard $(SRC_DIR)/*/$(IOC_NAME)/device/*.cl)
IOC_KERNELBIN = $(patsubst $(SRC_DIR)%.cl, $(BUILD_DIR)%, $(IOC_KERNEL))
IOC_KERNEL_BIN = $(subst device/,, $(IOC_KERNELBIN))

#these dirs are the same for host and kernel
ICO_BIN_DIR=$(dir $(IOC_BIN))
IOC_HOST_DIR=$(subst host/,, $(dir $(IOC_HOST)))

# OpenCL compile and link flags.
AOCL_COMPILE_CONFIG := $(shell aocl compile-config)
AOCL_LINK_CONFIG := $(shell aocl link-config)

IOC_BOARD = s5phq_a7
# Where is the Altera SDK for OpenCL software?
ifeq ($(wildcard $(ALTERAOCLSDKROOT)),)
$(info Set ALTERAOCLSDKROOT to the root directory of the Altera SDK for OpenCL software installation)
endif
ifeq ($(wildcard $(ALTERAOCLSDKROOT)/host/include/CL/opencl.h),)
$(info Set ALTERAOCLSDKROOT to the root directory of the Altera SDK for OpenCL software installation.)
endif

CXXFLAGS += -O2

# Directories
INC_DIRS := IOCcommon/common/inc
LIB_DIRS :=

INCS := $(wildcard )
LIBS :=
