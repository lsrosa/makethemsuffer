NAME=covariance
SRCS=covariance.c

LEVEL = /home/leandro/legup/4.0/examples
include $(LEVEL)/Makefile.common

ifeq ($(NO_OPT),)
	NO_OPT=1
endif
ifeq ($(NO_INLINE),)
	NO_INLINE=0
endif

LOCAL_CONFIG = -legup-config=config.tcl
include $(LEVEL)/Makefile.common
