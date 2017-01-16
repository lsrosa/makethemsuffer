all:
	@echo "reference code from base \n"
	clang -lm ../../base/fft.c -o refc; ./refc >! textbasec.txt
	@echo "\n\nreference code on cl format \n"
	clang ref.c -lm -o refcl;	./refcl >! testbasecl.txt
	@echo "\naaaaaaaaaaaaaaaaaaaaaaa"
	diff textbasec.txt testbasecl.txt

clean:
	rm refc refcl textbasec.txt testbasecl.txt
