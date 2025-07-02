# TODO: This is terrible, but I can't be bothered

CFLAGS  = -Wall -Wextra -std=gnu23
LDFLAGS = -lm -llua

all: main.o
	gcc main.o -o sample-table-generator $(LDFLAGS)

main.o:
	gcc -c main.c -o main.o $(CFLAGS)

clean:
	rm -rf *.o sample-table-generator
