
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "csapp.h"

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1059000
#define MAX_OBJECT_SIZE 102500


struct cache_block
{
	struct cache_block *next, *prev;
	long LRU;
	char *block; ssize_t block_size;
	char *request;
};


struct cache_block * alloc_block(int size);
void cache_reset();
int reader_check(char *request, char *block);
int remove_block(struct cache_block * blo);
void writer_check(char *request, char *block, int block_size);
