BENCHS=adderchain

FOLDERS=$(wildcard $(BENCHS)/*)
TARGETS=$(patsubst %, %/top.map.summary, $(FOLDERS))

all:$(TARGETS)
	@echo done "=)"

%/top.map.summary:%
	make -C $< -f lup.make



clean:
	for folder in $(FOLDERS) ; do \
      make -C $$folder -f lup.make cleanall; \
  done
