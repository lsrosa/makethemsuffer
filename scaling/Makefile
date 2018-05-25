BENCHS=adderchain adi_int

FOLDERS=$(wildcard $(addsuffix /*, $(BENCHS)))
TARGETS=$(patsubst %, %/top.map.summary, $(FOLDERS))

#@echo $(FOLDERS)
#@echo $(TARGETS)
all:$(TARGETS)
	@echo done "=)"

%/top.map.summary:%
	@echo $<
	#make -C $< -f lup.make



clean:
	for folder in $(FOLDERS) ; do \
      make -C $$folder -f lup.make cleanall; \
  done
