SYN_SRCS=$(wildcard $(BUILD_DIR)/Test*/lup/isolated_inline_localmem/*.bc)
SYN_OBJS=$(patsubst %.bc,%.v, $(SYN_SRCS))

$(SYN_OBJS):%.v:%.bc
ifdef REPETITIONS
	cp $^ $(basename $^).save; \
	make cleanall -f $(LUP_MAKEFILE) -C $(dir $@); \
	cp $(basename $^).save $^; \
	for i in $(shell seq 1 $(REPETITIONS)); \
	do \
		make syn -f $(LUP_MAKEFILE) -C $(dir $@); \
	done
endif

.PHONY: test
