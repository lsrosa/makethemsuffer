include variables.mk
#-----------------------------------------------------
#------------- compilation ---------------------------
void:
	@echo "\nThis rule is for debugging\nif you want do build all benchmarks for all tools, do make all\n"
	@echo  $(IOC_BIN) "\n" $(ICO_BIN_DIR)"\n" $(IOC_HOST_DIR) "\n""\n"$(GPP_BIN)"\n" $(BUILD_DIR)"\n" $(SRC_DIR)
	@echo $(basename $(SRC_DIR)/%) "\n" $(notdir $(SRC_DIR))

all: gpp ioc

gpp: $(BUILD_DIRS) $(GPP_BIN)

ioc: $(BUILD_DIRS) $(IOC_KERNEL_BIN) #$(IOC_BIN)

lup: $(BUILD_DIRS) $(LUP_BIN)
#-----------------------------------------------------
#------------- GPP compilation -----------------------
$(GPP_BIN): $(BUILD_DIR)/%:$(SRC_DIR)/%.c
	$(CC) -o $@  $^ $(CFLAGS)

#-----------------------------------------------------
#------------- IOC compilation -----------------------
#I know that this is ugly
$(subst host/,,$(IOC_HOST)):
	cp $(dir $@)host/$(notdir $@) $@

$(IOC_BIN): $(BUILD_DIR)/%:$(SRC_DIR)/%.cpp
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -fPIC $(foreach D,$(INC_DIRS),-I$D) \
		$(AOCL_COMPILE_CONFIG) $^ $(wildcard IOCcommon/common/src/AOCLUtils/*.cpp) $(AOCL_LINK_CONFIG) \
		$(foreach D,$(LIB_DIRS),-L$D) \
		$(foreach L,$(LIBS),-l$L) \
		-o $@

#a kind of reversing the changes done to the name
$(patsubst %.aoco,%.cl,$(IOC_KERNEL_BIN)):
	cp $(patsubst $(BUILD_DIR)%, $(SRC_DIR)%, $(dir $@))device/$(notdir $@) $@

$(IOC_KERNEL_BIN): $(BUILD_DIR)/%.aoco:$(BUILD_DIR)/%.cl
	#@echo -c $^ 	-o $@ #this is weird debug
	aoc -v -c -g --report --board $(IOC_BOARD) $^ -o $@ > $(dir $@)aoco_report.txt

#-----------------------------------------------------
#------------- LUP compilation -----------------------
$(LUP_BIN): $(BUILD_DIR)/%.v:$(SRC_DIR)/%.c
		cp $(dir $^)*	 $(dir  $@)
		make -f $(LUP_MAKEFILE) -C $(dir $@) #yeah I know that this is not sophsticated, but works

#-----------------------------------------------------
#------------- utils------ ---------------------------
#make directory for objects if they are dont exist
$(BUILD_DIRS):
	mkdir -p $(BUILD_DIRS)

clean:
	rm -rf	$(BUILD_DIR)

.SILENT: .obj_dir $(BUILD_DIRS)

#.PHONY: $(patsubst %.aoco,%.cl,$(IOC_KERNEL_BIN))
