BENCHS1=adderchain dividers faddtree multipliers
#complex
BENCHS_NO_PIPE=$(patsubst %, %-no-pipe, $(BENCHS1))
BENCHS_ILP=$(patsubst %, %-ilp, $(BENCHS1))
BENCHS_SDC=$(patsubst %, %-sdc, $(BENCHS1))
BENCHS_NIS=$(patsubst %, %-nis, $(BENCHS1))
BENCHS_GAS=$(patsubst %, %-gas, $(BENCHS1))
#BENCHS = $(BENCHS1) $(BENCHS_NO_PIPE)
BENCHS=$(BENCHS_ILP)# $(BENCHS_GAS)

TARGETS=$(patsubst %, %/plots, $(BENCHS))
FULL_TARGETS=$(patsubst %, %/plots/ALMs_full.jpg, $(BENCHS))
FAST_TARGETS=$(patsubst %, %/plots/ALMs_fast.jpg, $(BENCHS))

DISTANCESTARGETS=$(patsubst %, plots/%-schedDistHist.eps, $(BENCHS1))

all:$(TARGETS)
	@echo done "=)"

distances:$(DISTANCESTARGETS)
	@echo done "=)"

plots/%-schedDistHist.eps:%-*
	octave ~/myLegUp/4.0/examples/schedDistHistogram.m $^


copy:$(BENCHS_ILP)
	@echo $(BENCHS_ILP)
	@echo done "=)"

%-ilp:bak/%-nis
	mkdir -p $@
	cp $</*.c $@
	cp $</config.tcl $@
	cp $</lup.make $@

full:dfullb $(FULL_TARGETS)
	date > full_end
	@echo done "=)"

fast:dfastb $(FAST_TARGETS)
	@echo done "=)"
	date > fast_end

dfullb:
	date > full_begin

dfastb:
	date > fast_begin

%/plots/ALMs_full.jpg:%
		make -C $< -f lup.make singleLoopFullDSE

%/plots/ALMs_fast.jpg:%
	date > fast_begin
	make -C $< -f lup.make singleLoopFastDSE
	date > fast_end

%/plots:%
	make -C $< -f lup.make extracNests

cp_plots:
	cp adderchain-sdc/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsAC.jpg
	cp complex-sdc/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsCP.jpg
	cp dividers-sdc/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsDV.jpg
	cp faddtree-sdc/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsFAT.jpg
	cp multipliers-sdc/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsMT.jpg
	cp adderchain-no-pipe/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsAC-no-pipe.jpg
	cp dividers-no-pipe/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsDV-no-pipe.jpg
	cp faddtree-no-pipe/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsFAT-no-pipe.jpg
	cp multipliers-no-pipe/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsMT-no-pipe.jpg
	cp complex-no-pipe/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsCP-no-pipe.jpg

clean_fast:
	rm -rf fast_begin fast_end
	for folder in $(BENCHS) ; do \
	     	rm -rf $$folder/fast_loops_out; \
  	done

clean:
	rm -rf full_begin full_end fast_begin fast_end
	for folder in $(BENCHS) ; do \
     	make -C $$folder -f lup.make cleanall; \
  		rm -rf $$folder/loops $$folder/results_full.m; \
	done
