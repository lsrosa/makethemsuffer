all:
	@echo "reference code from base \n"
	clang -lm ../base/fft.c -o refc; ./refc > c.res
	@echo "\n\nreference code on cl format \n"
	clang fft.c -lm -o reflup; ./reflup > lup.res
	@echo "\n"
	diff c.res lup.res

clean:
	rm refc reflup c.res lup.res
