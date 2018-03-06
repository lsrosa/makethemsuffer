NAME=adi_int
all:
	@echo "reference code from base \n"
	clang -lm ../../base/$(NAME).c -o refc
	-./refc > c.res
	@echo "\n\nreference code on cl format \n"
	clang ref.c -lm -o refcl
	-./refcl > cl.res
	@echo "\n"
	diff c.res cl.res

clean:
	rm refc refcl c.res cl.res
