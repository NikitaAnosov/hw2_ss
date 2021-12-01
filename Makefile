CC= gcc
CFLAGS= -Wall -g
AR= ar
all: my_mat.a connections
connections:main.o my_mat.o
	$(CC) $(CFLAGS) -o connections main.o my_mat.o
my_mat.a: my_mat.o
	$(AR) -rcs my_mat.a my_mat.o
my_mat.o: my_mat.c my_mat.h
	$(CC) $(CFLAGS) -c my_mat.c
main.o: main.c my_mat.h
	$(CC) $(CFLAGS) -c main.c
.PHONY: clean all
clean:
	rm -f *.o *a connections
