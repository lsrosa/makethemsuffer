BENCHS=adderchain complex dividers faddtree multipliers par par2 seq seq2
#BENCHS= complex faddtree #faltando
#BENCHS=faddtree

TARGETS=$(patsubst %, %/plots, $(BENCHS))
FULL_TARGETS=$(patsubst %, %/plots/ALMs_full.jpg, $(BENCHS))
FAST_TARGETS=$(patsubst %, %/plots/ALMs_fast.jpg, $(BENCHS))

all:$(TARGETS)
	@echo done "=)"

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
	cp adderchain/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsAC.jpg
	cp adderchain/plots/clusterAvgConstraints.tex ~/Dropbox/LeandroRosa/thesis/images/ldse/clusterAC.tex
	cp complex/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsCP.jpg
	cp complex/plots/clusterAvgConstraints.tex ~/Dropbox/LeandroRosa/thesis/images/ldse/clusterCP.tex
	cp dividers/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsDV.jpg
	cp dividers/plots/clusterAvgConstraints.tex ~/Dropbox/LeandroRosa/thesis/images/ldse/clusterDV.tex
	cp faddtree/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsFAT.jpg
	cp faddtree/plots/clusterAvgConstraints.tex ~/Dropbox/LeandroRosa/thesis/images/ldse/clusterFAT.tex
	cp multipliers/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsMT.jpg
	cp multipliers/plots/clusterAvgConstraints.tex ~/Dropbox/LeandroRosa/thesis/images/ldse/clusterMT.tex
	cp par/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsPar.jpg
	cp par/plots/clusterAvgConstraints.tex ~/Dropbox/LeandroRosa/thesis/images/ldse/clusterPar.tex
	cp par2/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsPar2.jpg
	cp par2/plots/clusterAvgConstraints.tex ~/Dropbox/LeandroRosa/thesis/images/ldse/clusterPar2.tex
	cp seq/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsSeq.jpg
	cp seq/plots/clusterAvgConstraints.tex ~/Dropbox/LeandroRosa/thesis/images/ldse/clusterSeq.tex
	cp seq2/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsSeq2.jpg
	cp seq2/plots/clusterAvgConstraints.tex ~/Dropbox/LeandroRosa/thesis/images/ldse/clusterSeq2.tex
	cp adderchain-no-pipe/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsAC-no-pipe.jpg
	cp dividers-no-pipe/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsDV-no-pipe.jpg
	cp faddtree-no-pipe/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsFAT-no-pipe.jpg
	cp multipliers-no-pipe/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsMT-no-pipe.jpg
	#cp complex-no-pipe/plots/CorrALMs_full.jpg ~/Dropbox/LeandroRosa/thesis/images/ldse/CorrALMsCP-no-pipe.jpg

clean_fast:
	rm -rf fast_begin fast_end
	for folder in $(BENCHS) ; do \
      rm -rf $$folder/fast_loops_out; \
  done

clean:
	rm -rf full_begin full_end fast_begin fast_end
	for folder in $(BENCHS) ; do \
      make -C $$folder -f lup.make cleanall; \
			rm -rf $$folder/loops; \
  done
