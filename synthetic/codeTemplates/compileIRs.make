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
	$(LEVEL)/mark_labels.pl $^ > $(basename $^)_labeled.code
	$(FRONT_END) -x c $(basename $^)_labeled.code -emit-llvm -c $(CFLAG) $(CLANG_FLAG) -o $@
	$(LLVM_HOME)llvm-dis $@

clean:
	rm -rf *_labeled.code *.ll *.bc
