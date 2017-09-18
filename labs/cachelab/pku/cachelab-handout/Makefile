#
# Student makefile for Cache Lab
# 
CC = gcc
CFLAGS = -g -Wall -Werror -std=c99

all: csim test-trans tracegen
	-tar -cvf ${USER}_handin.tar  csim.c trans.c 

csim: csim.c cachelab.c cachelab.h
	$(CC) $(CFLAGS) -o csim csim.c cachelab.c -lm 

test-trans: test-trans.c trans.o cachelab.c cachelab.h
	$(CC) $(CFLAGS) -o test-trans test-trans.c cachelab.c trans.o 

tracegen-ct: tracegen-ct.c trans.c cachelab.c
	clang -emit-llvm -S -O3 trans.c -o trans.bc
	opt trans.bc -load=ct/Contech.so -Contech -o trans_ct.bc
	llvm-link trans_ct.bc ct/ct.bc -o trans_fin.bc
	clang -o tracegen-ct -O3 trans_fin.bc cachelab.c tracegen-ct.c -pthread -lrt

tracegen: tracegen.c trans.o cachelab.c
	$(CC) $(CFLAGS) -O0 -o tracegen tracegen.c trans.o cachelab.c

trans.o: trans.c
	$(CC) $(CFLAGS) -O0 -c trans.c

#
# Clean the src dirctory
#
clean:
	rm -rf *.o
	rm -f *.bc
	rm -f csim
	rm -f test-trans tracegen tracegen-ct
	rm -f trace.all trace.f*
	rm -f .csim_results .marker
