CC=gcc
CFLAGS= -Wall -g
AR=ar
all: libmat.a connections
#----------------------------------
connections: main.o libmat.a
	$(CC) $(CFLAGS) -o connections main.o libmat.a
#--------------------------------
libmat.a: my_mat.o
	$(AR) -rcs libmat.a my_mat.o 
my_mat.o: my_mat.c my_mat.h
	$(CC) $(CFLAGS) -c my_mat.c
main.o: main.c my_mat.h
	$(CC) $(CFLAGS) -c main.c
#--------------------------
.PHONY: clean all
clean:
	rm -f *.o *a connections