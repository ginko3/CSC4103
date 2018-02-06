CC=gcc
CFLAGS=-Werror -Wall
LDFLAGS=-L. -lm -lcmocka
EXEC=out

all: main

main: memory_alloc.o
	${CC} -o $(EXEC) $^ ${LDFLAGS}

%.o: %.c
	${CC} -o $@ -c $< ${CFLAGS}

clean:
	rm -rf *.o
