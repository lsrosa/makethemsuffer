ifeq ($(VERBOSE),1)
ECHO := 
else
ECHO := @
endif

# Where is the Altera SDK for OpenCL software?
ifeq ($(wildcard $(ALTERAOCLSDKROOT)),)
$(error Set ALTERAOCLSDKROOT to the root directory of the Altera SDK for OpenCL software installation)
endif
ifeq ($(wildcard $(ALTERAOCLSDKROOT)/host/include/CL/opencl.h),)
$(error Set ALTERAOCLSDKROOT to the root directory of the Altera SDK for OpenCL software installation.)
endif

# OpenCL compile and link flags.
AOCL_COMPILE_CONFIG := $(shell aocl compile-config)
AOCL_LINK_CONFIG := $(shell aocl link-config)

# Compilation flags
ifeq ($(DEBUG),1)
CXXFLAGS += -g
else
CXXFLAGS += -O2
endif

# Compiler
CXX := g++

# Target
TARGET := test1
TARGET_DIR := bin
AOCO_DIR := aoco
EMULATION_DIR := emulation
PROFILE_DIR := profile

KERNEL_DIR := device
KERNEL_SRC := test1.cl

# Directories
INC_DIRS := ../common/inc
LIB_DIRS := 

# Files
INCS := $(wildcard )
SRCS := $(wildcard host/src/*.cpp ../common/src/AOCLUtils/*.cpp)
LIBS := 

# Make it all!
all: $(TARGET_DIR)/$(TARGET)

# Host executable target.
$(TARGET_DIR)/$(TARGET) : Makefile $(SRCS) $(INCS)
	@[ -d $(TARGET_DIR) ] || mkdir -p $(TARGET_DIR)
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -fPIC $(foreach D,$(INC_DIRS),-I$D) \
			$(AOCL_COMPILE_CONFIG) $(SRCS) $(AOCL_LINK_CONFIG) \
			$(foreach D,$(LIB_DIRS),-L$D) \
			$(foreach L,$(LIBS),-l$L) \
			-o $(TARGET_DIR)/$(TARGET)

#-----------------------------------------------------------------------------------------
#PROFILING--------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------
profile:dir_prof $(PROFILE_DIR)/$(TARGET).aocx
	@echo done for profiling at ./$(PROFILE_DIR)/

$(PROFILE_DIR)/$(TARGET).aocx: 
	aoc -v --profile --board s5phq_a7 $(KERNEL_DIR)/$(KERNEL_SRC) -o $(PROFILE_DIR)/$(TARGET).aocx

dir_prof:
	mkdir -p $(PROFILE_DIR)

clean_profile:
	$(ECHO)rm -rf $(PROFILE_DIR)/*
#-----------------------------------------------------------------------------------------
#EMULATION--------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------
emulate: all $(EMULATION_DIR)/$(TARGET).aocx
	cp $(EMULATION_DIR)/$(TARGET).aocx $(TARGET_DIR)/$(TARGET).aocx
	env CL_CONTEXT_EMULATOR_DEVICE_ALTERA=1 $(TARGET_DIR)/$(TARGET)

emulation:dir_emulation $(EMULATION_DIR)/$(TARGET).aocx
	@echo done for emulation at ./$(EMULATION_DIR)/

$(EMULATION_DIR)/$(TARGET).aocx: 
	aoc -v -march=emulator -g --board s5phq_a7 $(KERNEL_DIR)/$(KERNEL_SRC) -o $(EMULATION_DIR)/$(TARGET).aocx

dir_emulation:
	mkdir -p $(EMULATION_DIR)

clean_emulation:
	$(ECHO)rm -rf $(EMULATION_DIR)/* 
#-----------------------------------------------------------------------------------------
#AOCO FILE--------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------
report:dir_aoco $(AOCO_DIR)/$(TARGET).aoco
	@echo report at aoco_report.txt

$(AOCO_DIR)/$(TARGET).aoco: 
	#-g for debug in simulation -c for generation only .aoco
	aoc -v -c -g --report --board s5phq_a7 $(KERNEL_DIR)/$(KERNEL_SRC) -o $(AOCO_DIR)/$(TARGET).aoco > aoco_report.txt

dir_aoco:
	mkdir -p $(AOCO_DIR)

clean_aoco:
	$(ECHO)rm -rf $(AOCO_DIR)/* aoco_report.txt 
#-----------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------

# Standard make targets
clean:
	rm -rf $(TARGET_DIR)/$(TARGET) 

clean_partials: clean_aoco clean_emulation clean_profile

.PHONY: all clean emulation

.SILENT: aocodir

aoc:
	mkdir -p aoc
	aoc -v --board s5phq_a7 device/$(TARGET).cl -o aoc/$(TARGET).aocx 
