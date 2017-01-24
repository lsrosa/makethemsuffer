all:
	@echo "reference code from base \n"
	clang -lm ../base/jacobi_2d.c -o refc; ./refc > c.res
	@echo "\n\nreference code on cl format \n"
	clang jacobi_2d.c -lm -o reflup; ./reflup > lup.res
	@echo "\n"
	diff c.res lup.res

clean:
	rm refc reflup c.res lup.res
