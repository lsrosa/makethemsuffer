include variables.mk
include tests.mk
#-----------------------------------------------------
#------------- compilation ---------------------------
void:
	@echo "\nThis rule is for debugging\nif you want do build all benchmarks for all tools, do make all\n"
	@echo  $(IOC_BIN) "\n" $(ICO_BIN_DIR)"\n" $(IOC_HOST_DIR) "\n""\n"$(GPP_BIN)"\n" $(BUILD_DIR)"\n" $(SRC_DIR)
	@echo $(basename $(SRC_DIR)/%) "\n" $(notdir $(SRC_DIR))

all: gpp ioc

gpp: $(BUILD_DIRS) $(GPP_BIN)

ioc: $(BUILD_DIRS) $(IOC_KERNEL_BIN) #$(IOC_KERNEL_OBJ)

lup: $(BUILD_DIRS) $(LUP_OBJ) #$(LUP_BIN)

test: $(BUILD_DIRS) $(SYN_OBJS)
	@echo $(SYN_SRCS)
	@echo $(SYN_OBJS)

synthetic:
	mkdir -p $(BUILD_DIR)/synthetic
	cmake synthetic/ -B$(BUILD_DIR)/synthetic

mydocmyhell:
	mkdir -p $(BUILD_DIR)/myDocMyHell
	cmake myDocMyHell/ -B$(BUILD_DIR)/myDocMyHell
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
	cloc $(dir  $@)*.c > $(dir  $@)source_lines_number.txt
ifdef REPETITIONS
	make clear -f $(LUP_MAKEFILE) -C $(dir $@); \
	for i in $(shell seq 1 $(REPETITIONS)); \
	do \
		make -f $(LUP_MAKEFILE) -C $(dir $@); \
	done
else
	time 2> $(dir $@)time_report.txt make -f $(LUP_MAKEFILE) -C $(dir $@)  #yeah I know that this is not sophsticated /*euphemism here*/, but works
endif

$(LUP_BIN):$(BUILD_DIR)%.dummy:$(BUILD_DIR)%.v
		make p -f $(LUP_MAKEFILE) -C $(dir $@)
		make q -f $(LUP_MAKEFILE) -C $(dir $@)
		quartus_fit $(dir $@)top
		echo "dummy" > $@

#-----------------------------------------------------
#------------- LUP compilation -----------------------
degrade:$(BUILD_DIRS) $(DEGRADE_OBJ)

$(DEGRADE_OBJ):$(BUILD_DIR)/%.v:$(SRC_DIR)/%.c
	cp $(dir $^)*	 $(dir  $@)
	make -f $(LUP_MAKEFILE) -C $(dir $@); \

#-----------------------------------------------------
#------------- Plots ---------------------------------
plots:
	mkdir -p $(BUILD_DIR)/$(PLOTS_DIR)
	cp $(PLOTS_DIR)/*.m $(BUILD_DIR)/$(PLOTS_DIR)
	#@echo $(BUILD_DIR)/*/lup/base
	#@echo $(BUILD_DIR)/*/lup/isolated
	#@echo $(BUILD_DIR)/*/lup/isolated_inline_localmem
	#@echo $(BUILD_DIR)/*/lup/isolated_localmem
	# individual execution for each script, might automate this later
	#octave $(BUILD_DIR)/$(PLOTS_DIR)/lupplot.m $(BUILD_DIR)/*/lup/base/DetailedLegUPTiming
	#octave $(BUILD_DIR)/$(PLOTS_DIR)/lupplot.m $(BUILD_DIR)/*/lup/isolated/DetailedLegUPTiming
	#octave $(BUILD_DIR)/$(PLOTS_DIR)/lupplot.m $(BUILD_DIR)/*/lup/isolated_localmem/DetailedLegUPTiming
	octave $(BUILD_DIR)/$(PLOTS_DIR)/lupplot.m $(BUILD_DIR)/*/lup/isolated_inline_localmem/DetailedLegUPTiming

	octave $(BUILD_DIR)/$(PLOTS_DIR)/sdcmodsched.m $(BUILD_DIR)/*/lup/pipeline/DetailedModuleSDCSchedulingTime
	mv $(BUILD_DIR)/$(PLOTS_DIR)/data.mat $(BUILD_DIR)/$(PLOTS_DIR)/pipeline.mat
	mv $(BUILD_DIR)/$(PLOTS_DIR)/pipedata.mat $(BUILD_DIR)/$(PLOTS_DIR)/sdcpipelinetotaltime.mat

	octave $(BUILD_DIR)/$(PLOTS_DIR)/sdcmodsched.m $(BUILD_DIR)/*/lup/ilp_pipeline/DetailedModuleSDCSchedulingTime
	mv $(BUILD_DIR)/$(PLOTS_DIR)/data.mat $(BUILD_DIR)/$(PLOTS_DIR)/ilp_pipeline.mat
	mv $(BUILD_DIR)/$(PLOTS_DIR)/pipedata.mat $(BUILD_DIR)/$(PLOTS_DIR)/ilppipelinetotaltime.mat

	octave $(BUILD_DIR)/$(PLOTS_DIR)/sdcmodsched.m $(BUILD_DIR)/*/lup/ga_pipeline/DetailedModuleSDCSchedulingTime
	mv $(BUILD_DIR)/$(PLOTS_DIR)/data.mat $(BUILD_DIR)/$(PLOTS_DIR)/ga_pipeline.mat
	mv $(BUILD_DIR)/$(PLOTS_DIR)/pipedata.mat $(BUILD_DIR)/$(PLOTS_DIR)/gapipelinetotaltime.mat

compareGA_plot:
	cp $(PLOTS_DIR)/*.m $(BUILD_DIR)/$(PLOTS_DIR)
	octave $(BUILD_DIR)/$(PLOTS_DIR)/compareGA.m

degrade_plot:
	mkdir -p $(BUILD_DIR)/$(PLOTS_DIR)
	cp $(PLOTS_DIR)/*.m $(BUILD_DIR)/$(PLOTS_DIR)
	octave $(BUILD_DIR)/$(PLOTS_DIR)/degrade.m $(BUILD_DIR)/*/lup/degrade/DegradedModuleSchedulerTimes
#-----------------------------------------------------
#------------- utils----------------------------------
#make directory for objects if they are dont exist
$(BUILD_DIRS):
	mkdir -p $(BUILD_DIRS)

clean:
	rm -rf	$(BUILD_DIR)

cleansynthetic:
	rm -rf $(BUILD_DIR)/synthetic

cleanmydocmyhell:
	rm -rf $(BUILD_DIR)/myDocMyHell/*


.SILENT: .obj_dir $(BUILD_DIRS)

.PHONY: plots synthetic
#.PHONY: $(patsubst %.aoco,%.cl,$(IOC_KERNEL_BIN))
