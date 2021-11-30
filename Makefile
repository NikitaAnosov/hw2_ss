CC=gcc
CFLAGS= -Wall -g

all: connections
connections: main.o my_mat.o my_mat.h
	$(CC) $(CFLAGS) -o connections main.o
#--------------------------------
my_mat.o: my_mat.c my_mat.h
	$(CC) $(CFLAGS) -c my_mat.c
main.o: main.c my_mat.h
	$(CC) $(CFLAGS) -c main.c
#--------------------------
.PHONY: clean all
clean:
	rm -f *.o connections
