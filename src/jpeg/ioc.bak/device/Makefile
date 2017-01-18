all:
	@echo "reference code from base \n"
	clang -lm ../../base/jpeg.c -o refc -lm; ./refc > textbasec.txt
	@echo "\n\nreference code on cl format \n"
	clang ref.c -lm -o refcl; ./refcl > testbasecl.txt
	@echo "\n"
	diff textbasec.txt testbasecl.txt

clean:
	rm refc refcl textbasec.txt testbasecl.txt
