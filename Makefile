CC := gcc
STD := c99
CFLAGS := -std=${STD} -Wall -Wextra -Werror -Wpedantic -Wshadow -Wvla
CFLAGS += -Wpointer-arith -Wwrite-strings -Wfloat-equal -Wcast-align
CFLAGS += -Wcast-qual -Wbad-function-cast -Wstrict-overflow=4
CFLAGS += -Wunreachable-code -Wformat=2 -Wundef -Wstrict-prototypes
CFLAGS += -Wmissing-declarations -Wmissing-prototypes -Wold-style-definition

foo: foo.o
	${CC} foo.o ${CFLAGS} -o foo

foo.o: foo.c
	${CC} foo.c -c -o foo.o

foo.c:
	@echo "#include <stdio.h>" >foo.c
	@echo 'int main(void) { puts("Hello World"); }' >>foo.c
