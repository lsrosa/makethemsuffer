all:
	@echo "reference code from base \n"
	clang -lm ../../base/correlation.c -o refc -lm; ./refc
	@echo "\n\nreference code on cl format \n"
	clang ref.c -lm -o refcl; ./refcl
