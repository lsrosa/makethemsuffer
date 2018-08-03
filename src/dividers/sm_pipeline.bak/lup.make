NAME=dividers
SRCS=dividers.c

CUSTOM_MODULE_SCHEDULING = 1

LEVEL = /home/leandro/myLegUp/4.0/examples
ifeq ($(NO_OPT),)
NO_OPT=0
endif
ifeq ($(NO_INLINE),)
NO_INLINE=0
endif

# don't unroll the loop
CFLAG += -mllvm -unroll-threshold=0

LOCAL_CONFIG = -legup-config=config.tcl
include $(LEVEL)/Makefile.myDocMyHell
