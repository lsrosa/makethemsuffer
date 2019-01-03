BENCHS=adderchain complex dividers faddtree multipliers par par2 seq seq2
#BENCHS= complex faddtree #faltando
#BENCHS=faddtree

TARGETS=$(patsubst %, %/plots, $(BENCHS))
FULL_TARGETS=$(patsubst %, %/plots/ALMs_full.jpg, $(BENCHS))
FAST_TARGETS=$(patsubst %, %/plots/ALMs_fast.jpg, $(BENCHS))

all:$(TARGETS)
	@echo done "=)"

full:$(FULL_TARGETS)
	@echo done "=)"

fast:$(FAST_TARGETS)
	@echo done "=)"

%/plots/ALMs_full.jpg:%
	make -C $< -f lup.make singleLoopFullDSE

%/plots/ALMs_fast.jpg:%
	make -C $< -f lup.make singleLoopFastDSE

%/plots:%
	make -C $< -f lup.make extracNests

clean:
	for folder in $(BENCHS) ; do \
      make -C $$folder -f lup.make cleanall; \
			rm -rf $$folder/loops; \
  done
