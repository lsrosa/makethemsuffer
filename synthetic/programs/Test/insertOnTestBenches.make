SRCS=$(wildcard *.bc)
BASENAME=$(basename $(SRCS))
PROGRAMNAME=$(notdir $(shell pwd))
DIRNAME=$(addsuffix /lup/isolated_inline_localmem/,$(addprefix ../../../$(PROGRAMNAME), $(BASENAME)))
OBJS=$(join $(DIRNAME), $(SRCS))

all:$(OBJS)

$(OBJS):%.bc:$(SRCS)
	mkdir -p ../../../$(PROGRAMNAME)$(BASENAME)
	mkdir -p ../../../$(PROGRAMNAME)$(BASENAME)/lup
	mkdir -p $(DIRNAME)
	cp lup.make $(dir $@)
	cp config.tcl $(dir $@)
	cp $(notdir $@) $@
