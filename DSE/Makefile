BENCHS=adderchain complex dividers faddtree multipliers
#BENCHS= complex faddtree #faltando
#BENCHS=faddtree
TARGETS=$(patsubst %, %/plots, $(BENCHS))

all:$(TARGETS)
	@echo done "=)"

%/plots:%
	make -C $< -f lup.make extracNests

clean:
	for folder in $(BENCHS) ; do \
      make -C $$folder -f lup.make cleanall; \
			rm -rf $$folder/loops; \
  done
