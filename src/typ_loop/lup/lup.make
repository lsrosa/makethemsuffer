NAME=typ_loop
SRCS=typ_loop.c

LEVEL = /home/leandro/legup/4.0/examples
ifeq ($(NO_OPT),)
	NO_OPT=1
endif
ifeq ($(NO_INLINE),)
	NO_INLINE=1
endif

include $(LEVEL)/Makefile.common
