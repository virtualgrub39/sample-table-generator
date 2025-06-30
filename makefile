# TODO: This is terrible, but I can't be bothered

all: main.o
	gcc main.o -o sample-table-generator -lm -llua

main.o:
	gcc -c main.c -o main.o -Wall -Wextra -Werror -pedantic

clean:
	rm -rf *.o sample-table-generator
