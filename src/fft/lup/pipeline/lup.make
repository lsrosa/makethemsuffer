NAME=fft
SRCS=fft.c

LEVEL = /home/leandro/legup/4.0/examples
ifeq ($(NO_OPT),)
	NO_OPT=0
endif
ifeq ($(NO_INLINE),)
	NO_INLINE=0
endif

LOCAL_CONFIG = -legup-config=config.tcl
include $(LEVEL)/Makefile.common
