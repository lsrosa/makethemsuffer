include variables.mk
#-----------------------------------------------------
#------------- compilation ---------------------------
void:
	@echo "\nThis rule is for debugging\nif you want do build all benchmarks for all tools, do make all\n"
	@echo  $(IOC_BIN) "\n" $(ICO_BIN_DIR)"\n" $(IOC_HOST_DIR) "\n""\n"$(GPP_BIN)"\n" $(BUILD_DIR)"\n" $(SRC_DIR)
	@echo $(basename $(SRC_DIR)/%) "\n" $(notdir $(SRC_DIR))

all: gpp ioc

gpp: $(BUILD_DIRS) $(GPP_BIN)

ioc: $(BUILD_DIRS) $(IOC_KERNEL_BIN) #$(IOC_KERNEL_OBJ)

lup: $(BUILD_DIRS) $(LUP_BIN) #$(LUP_OBJ)
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
$(patsubst %.aoco,%.cl,$(IOC_KERNEL_OBJ)):
	cp $(patsubst $(BUILD_DIR)%, $(SRC_DIR)%, $(dir $@))device/$(notdir $@) $@

$(IOC_KERNEL_OBJ): $(BUILD_DIR)/%.aoco:$(BUILD_DIR)/%.cl
	#@echo -c $^ 	-o $@ #this is weird debug
	time 2> $(dir $@)time_report.txt aoc -v -g --report --board $(IOC_BOARD)_a7 -c $^ -o $@ > $(dir $@)aoco_report.txt

$(IOC_KERNEL_BIN):$(BUILD_DIR)/%.aocx:$(BUILD_DIR)/%.aoco
	$(shell cd $(dir $@); aoc -v -g --report --board $(IOC_BOARD)_a7 $(notdir $^) -o $(notdir $@))
#-----------------------------------------------------
#------------- LUP compilation -----------------------
$(LUP_OBJ):$(BUILD_DIR)/%.v:$(SRC_DIR)/%.c
	cp $(dir $^)*	 $(dir  $@)
	time 2> $(dir $@)time_report.txt make -f $(LUP_MAKEFILE) -C $(dir $@)  #yeah I know that this is not sophsticated /*euphemism here*/, but works

$(LUP_BIN):$(BUILD_DIR)%.dummy:$(BUILD_DIR)%.v
	make p -f $(LUP_MAKEFILE) -C $(dir $@)
	make q -f $(LUP_MAKEFILE) -C $(dir $@)
	quartus_fit $(dir $@)top
	echo "dummy" > $@
#-----------------------------------------------------
#------------- utils------ ---------------------------
#make directory for objects if they are dont exist
$(BUILD_DIRS):
	mkdir -p $(BUILD_DIRS)

clean:
	rm -rf	$(BUILD_DIR)

.SILENT: .obj_dir $(BUILD_DIRS)

#.PHONY: $(patsubst %.aoco,%.cl,$(IOC_KERNEL_BIN))
