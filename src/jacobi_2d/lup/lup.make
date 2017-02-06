NAME=jacobi_2d
SRCS=jacobi_2d.c

LEVEL = /home/leandro/legup/4.0/examples
ifeq ($(NO_OPT),)
	NO_OPT=1
endif
ifeq ($(NO_INLINE),)
	NO_INLINE=1
endif

LOCAL_CONFIG = -legup-config=config.tcl
include $(LEVEL)/Makefile.common
