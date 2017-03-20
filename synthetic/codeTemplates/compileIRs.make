LEVEL=/home/leandro/legup/4.0/examples

# Assume all .c files are independent source files
SRCS := $(shell ls *.code)
OBJS = $(patsubst %.code,%.bc,$(SRCS))

# make sure all is the default target, and not something from Makefile.aux
default: $(OVERRIDE)all

include $(LEVEL)/Makefile.config
include $(LEVEL)/Makefile.ancillary
include $(LEVEL)/Makefile.aux
include $(LEVEL)/Makefile.private


$(OVERRIDE)all: $(OBJS)

$(OBJS):%.bc:%.code
	@echo $^ $@
ifndef LINK
	# annotate loop labels
	$(LEVEL)/mark_labels.pl $^ > $(basename $^).labeled
endif
	@echo 	$(FRONT_END) -x c $(basename $^).labeled -emit-llvm -c $(CFLAG) $(CLANG_FLAG) -o $@
	$(FRONT_END) -x c $(basename $^).labeled -emit-llvm -c $(CFLAG) $(CLANG_FLAG) -o $@
	$(LLVM_HOME)llvm-dis $@
clean:
	rm -rf *.labeled *.ll *.bc
