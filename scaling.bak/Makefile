BENCHS=adderchain adi_int complex covariance dividers faddtree multipliers row_col rs_decode
#BENCHS=complex covariance dividers faddtree multipliers row_col rs_decode

FOLDERS=$(wildcard $(addsuffix /*, $(BENCHS)))
TARGETS=$(patsubst %, %/DetailedModuleSDCSchedulingTime, $(FOLDERS))
REPORTS=$(patsubst %, %/report, $(FOLDERS))
#@echo $(FOLDERS)
#@echo $(TARGETS)
all:$(TARGETS)
	@echo done "=)"

%/DetailedModuleSDCSchedulingTime:%
	#@echo $@
	make -C $< -f lup.make
	make -C $< -f lup.make p
	make -C $< -f lup.make q
	make -C $< -f lup.make f

read:$(REPORTS)
	@echo done "=)"

%/report:%
	cat $</top.fit.rpt | grep "Logic utilization (in ALMs)" | cat >> $@
	cat $</top.fit.rpt | grep "Total registers" | cat >> $@
	cat $</top.fit.rpt | grep "Total RAM Blocks" | cat >> $@
	cat $</top.fit.rpt | grep "Total block memory bits" | cat >> $@
	cat $</top.fit.rpt | grep "Total DSP Blocks" | cat >> $@

reportclean:
	for folder in $(FOLDERS) ; do \
			rm -rf $$folder/report; \
  done

clean:
	for folder in $(FOLDERS) ; do \
      make -C $$folder -f lup.make cleanall; \
			rm -rf $$folder/report $$folder/top.*; \
  done
