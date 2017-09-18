/*
 *
 *              
 *		  cachelab	Part A
 *
 *			 Cache 	Simulator
 *
 *			  Name	: Yicheng Lee
 *			userID	: 1500012786@pku.edu.cn
 * 
 */


/*
 *	We could convert the raw address to 3 parts: CT, CI, CO
 *
 *
 *
 *	1.	Set Selection
 *				In this step, the cache extracts the s set index bits from the middle of the address
 *			for w. These bits are interpreted as an unsigned integer that corresponds to a set number.
 *			In other words, if we think of the cache as a one-dimensional array of sets,
 *			then the set index bits form an index into this array.
 *
 *
 *
 *	2.	Line Matching
 *				Now that we have selected some set i in the previous step, the next step is to
 *			determine if a copy of the word w is stored in one of the cache lines contained in
 *			set i.
 *
 *
 *
 *	3.	Word Selection
 *				Once we have a hit,. we know that w is somewhere in the block. This last step
 *			determines where the desired word starts in the block.
 *	
 *
 *
 *	In function header comment, I've provided MORE DETAIL about hit and miss.
 *
 */
#include "cachelab.h"
#include <stdio.h>
#include <string.h>
#include <getopt.h>		//See "man 3 getopt" for details.
#include <stdlib.h>
#include <unistd.h>
#include <math.h>



typedef struct
{
	unsigned valid;		//	valid bit
	int lastUsedTime;	//	LRU (least-recently used) replacement policy when choosing which cache line to evict.
	unsigned long long cacheTag;	//	CT (cache tag)
} Block;


int s = -1, E = -1, b = -1, verbosity = 0;

int hit = 0, miss = 0, eviction = 0;

int overAllTime = 0;


Block *cachePool;



/*
 * 		displayHelp - help infomation
 */
void displayHelp(char* argv[], int ERROR)
{
    printf("  Usage: %s [-hv] -s <num> -E <num> -b <num> -t <file>\n", argv[0]);
    puts("  Options:");
    puts("    -h         Print this help message.");
    puts("    -v         Optional verbose flag.");
    puts("    -s <num>   Number of set index bits.");
    puts("    -E <num>   Number of lines per set.");
    puts("    -b <num>   Number of block offset bits.");
    puts("    -t <file>  Trace file.");
    puts("");
    puts("");
    puts("    Examples:");
    printf("    %s -s 4 -E 1 -b 4 -t traces/yi.trace\n", argv[0]);
    printf("    %s -v -s 8 -E 2 -b 4 -t traces/yi.trace\n", argv[0]);
    if (ERROR)
    {
    	exit(1);
    }
    else
    {
    	exit(0);
    }
}


/*
 *	Specify an address and visit the corresponding block.
 *	
 *	
 *	1. Hit
 *			When a program needs a particular data object d from level k, it first looks
 *		for d in one of the blocks currently stored at level k. If d happens to be cached at level k,
 *		then we have what is called a cache hit.
 *
 *	2 Miss
 *
 *		2.1 Compulsory Miss
 *				If the cache at level k is empty, then any access of any data object will miss. An
 * 			empty cache is sometimes referred to as a cold cache, and misses of this kind are
 * 			called compulsory misses or cold misses. Cold misses are important because they
 * 			are often transient events that might not occur in steady state, after the cache has
 * 			been warmed up by repeated memory accesses.
 *
 *		2.2 	A cache with a least recently used (LRU) replacement policy
 *			would choose the block that was last accessed the furthest in the past.
 */
void visitCache(unsigned long long address)
{
	unsigned long long cacheTag = address >> b >> s;
	unsigned cacheIndex = address >> b & ((1 << s) - 1);
	
	Block *cacherow = cachePool + E * cacheIndex;
	Block *victimRow = cacherow;
	for (int i = 0; i < E; ++i)
	{
		if  (!cacherow[i].valid)	//	compulsory miss
		{
			++miss;
			cacherow[i].valid = 1;
			cacherow[i].lastUsedTime = overAllTime;
			cacherow[i].cacheTag = cacheTag;
			return;
		}
		
		if  (cacherow[i].lastUsedTime && cacherow[i].cacheTag == cacheTag)	//	hit
		{
			cacherow[i].lastUsedTime = overAllTime;
			++hit;
			return;
		}

		if(cacherow[i].lastUsedTime < victimRow->lastUsedTime)	//	select the victim block
		{
			victimRow = cacherow + i;
		}
	}

	/*
	 *	capacity miss
	 */
	++miss;
	++eviction;
	victimRow->lastUsedTime = overAllTime;
	victimRow->cacheTag = cacheTag;
}


int main(int argc, char **argv)
{
	FILE *tracefile;
	char opt;
	while ((opt = getopt(argc, argv, "s:E:b:t:vh")) != EOF)
	{
		switch (opt)
		{
			case 's':	//	<s>: Number of set index bits (S = 2 s is the number of sets)
				s = atoi(optarg);
				break;

			case 'E':	//	<E>: Associativity (number of lines per set)
				E = atoi(optarg);
				break;

			case 'b':	//	<b>: Number of block bits (B = 2^b is the block size)
				b = atoi(optarg);
				break;

			case 't':	//	<tracefile>: Name of the valgrind trace to replay
				tracefile = fopen(optarg, "r");
				break;

			case 'v':	//	use the -v option for a detailed record of each hit and miss.
				verbosity = 1;
				break;

			case 'h':	//	Optional help flag that prints usage info
				displayHelp(argv, 0);
				//exit(0);

			default:
				displayHelp(argv, 1);
				//exit(1);
		}
	}
	
	if (s == -1 || E == -1 || b == -1 || tracefile == NULL)
	{
		printf("%s: Missing required command line argument\n", argv[0]);
		displayHelp(argv, 1);
		//exit(1);
	}

	cachePool = (Block*) malloc(sizeof(Block) * E * (1 << s) );
	memset(cachePool, 0, sizeof(Block) * E * (1 << s) );

	/*
	 *	Each line denotes one or two memory accesses. The format of each line is
	 *	[space]operation address,size
	 */
	{
		char operation;
		unsigned long long address;
		unsigned size;
		while (fscanf(tracefile, "%s%llx,%u\n", &operation, &address, &size) == 3)
		{
			++overAllTime;
			switch (operation) {
				
				case 'M':	//	a data modify
					visitCache(address);
					++hit;	//	must hit in the second visitation.
					break;

				case 'L':	//	a data load
					visitCache(address);
					break;

				case 'S':	//	a data store
					visitCache(address);
					break;

				case 'I':	//	an instruction load
					break;
			}
		}
	}

	fclose(tracefile);
	
	free(cachePool);
    
    printSummary(hit, miss, eviction);
    
    return 0;
}
