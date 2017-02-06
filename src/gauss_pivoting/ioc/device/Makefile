NAME=fft
all:
	@echo "reference code from base \n"
	clang -lm ../../base/$(NAME).c -o refc
	-./refc > c.res
	@echo "\n\nreference code on cl format \n"
	clang ref.c -lm -o refioc
	-./refioc > ioc.res
	@echo "\n"
	diff c.res ioc.res

clean:
	rm refc refioc c.res ioc.res
