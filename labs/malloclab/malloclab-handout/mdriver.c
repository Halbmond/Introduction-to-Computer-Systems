/*
 * mdriver.c - Autolab version of the CS:APP Malloc Lab Driver
 *
 * Uses a collection of trace files to tests a malloc/free
 * implementation in mm.c.
 *
 * Copyright (c) 2004-2015, R. Bryant and D. O'Hallaron, All rights
 * reserved.  May not be used, modified, or copied without permission.
 */
#include <assert.h>
#include <errno.h>
#include <float.h>
#include <setjmp.h>
#include <signal.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>


#include "mm.h"
#include "memlib.h"
#include "fsecs.h"
#include "config.h"

/**********************
 * Constants and macros
 **********************/

/* Misc */
#define MAXLINE     1024 /* max string size */
#define HDRLINES       4 /* number of header lines in a trace file */
#define LINENUM(i) (i+5) /* cnvt trace request nums to linenums (origin 1) */

/* Returns true if p is ALIGNMENT-byte aligned */
#define IS_ALIGNED(p)  ((((unsigned long)(p)) % ALIGNMENT) == 0)

/* weights */
#define WNONE 0
#define WALL 1
#define WUTIL 2
#define WPERF 3

/******************************
 * The key compound data types
 *****************************/

/*
 * There are two different, easily-confusable concepts:
 * - opnum: which line in the file.
 * - index: the block number ; corresponds to something allocated.
 * Remember that index (-1) is the null pointer.
 */

/* Records the extent of each block's payload */
typedef struct range_t {
    char *lo;              /* low payload address */
    char *hi;              /* high payload address */
    struct range_t *next;  /* next list element */
    int index;             /* same index as free; for debugging */
} range_t;

/* Characterizes a single trace operation (allocator request) */
typedef struct {
    enum { ALLOC, FREE, REALLOC } type; /* type of request */
    int index;                        /* index for free() to use later */
    size_t size;                      /* byte size of alloc/realloc request */
} traceop_t;

/* Holds the information for one trace file*/
typedef struct {
    char filename[MAXLINE];
    int ignore_ranges;   /* don't check ranges (i.e. this is too big) */
    int num_ids;         /* number of alloc/realloc ids */
    int num_ops;         /* number of distinct requests */
    int weight;          /* weight for this trace (unused) */
    traceop_t *ops;      /* array of requests */
    char **blocks;       /* array of ptrs returned by malloc/realloc... */
    size_t *block_sizes; /* ... and a corresponding array of payload sizes */
    int *block_rand_base;/* index into random_data, if debug is on */
} trace_t;

/*
 * Holds the params to the xxx_speed functions, which are timed by fcyc.
 * This struct is necessary because fcyc accepts only a pointer array
 * as input.
 */
typedef struct {
    trace_t *trace;
    range_t *ranges;
} speed_t;

/* Summarizes the important stats for some malloc function on some trace */
typedef struct {
    /* set in read_trace */
    char filename[MAXLINE];
    int weight;
    double ops;      /* number of ops (malloc/free/realloc) in the trace */

    /* run-time stats defined for both libc and student */
    int valid;       /* was the trace processed correctly by the allocator? */
    double secs;     /* number of secs needed to run the trace */

    /* defined only for the student malloc package */
    double util;     /* space utilization for this trace (always 0 for libc) */

    /* Note: secs and util are only defined if valid is true */
} stats_t;

/* Summarizes the key statistics for a set of traces */
typedef struct {
    double util;  /* average utilization expressed as a percentage */
    double ops;   /* total number of operations */
    double secs;  /* total number of elapsed seconds */
    double tput;  /* average throughput expressed in Kops/s */
} sum_stats_t;

/********************
 * For debugging.  If debug-mode is on, then we have each block start
 * at a "random" place (a hash of the index), and copy random data
 * into it.  With DBG_CHEAP, we check that the data survived when we
 * realloc and when we free.  With DBG_EXPENSIVE, we check every block
 * every operation.
 * randint_t should be a byte, in case students return unaligned memory.
 *******************/
#define RANDOM_DATA_LEN (1<<16)
typedef unsigned char randint_t;
static const char randint_t_name[] = "byte";
static randint_t random_data[RANDOM_DATA_LEN];


/********************
 * Global variables
 *******************/

static enum { DBG_NONE, DBG_CHEAP, DBG_EXPENSIVE } debug_mode = DBG_CHEAP;

int verbose = 1;        /* global flag for verbose output */
static int errors = 0;  /* number of errs found when running student malloc */
int onetime_flag = 0;

/* by default, no timeouts */
static int set_timeout = 0;

/* Directory where default tracefiles are found */
static char tracedir[MAXLINE] = TRACEDIR;

/* The filenames of the default tracefiles */
static char *default_tracefiles[] = {
    DEFAULT_TRACEFILES, NULL
};

char autoresult[MAXLINE]; /* autoresult string */

/* Summary statistics for libc and student's mm.c submissions */
sum_stats_t global_libc_sum_stats;
sum_stats_t global_mm_sum_stats;

/*********************
 * Function prototypes
 *********************/

/* these functions manipulate range lists */
static int add_range(range_t **ranges, char *lo, int size,
                     const trace_t *trace, int opnum, int index);
static void remove_range(range_t **ranges, char *lo);
static void clear_ranges(range_t **ranges);

/* These functions implement the debugging code */
static void init_random_data(void);
static void check_index(const trace_t *trace, int opnum, int index);
static void randomize_block(trace_t *trace, int index);

/* These functions read, allocate, and free storage for traces */
static trace_t *read_trace(stats_t *stats, const char *tracedir,
                           const char *filename);
static void reinit_trace(trace_t *trace);
static void free_trace(trace_t *trace);

/* Routines for evaluating the correctness and speed of libc malloc */
static int eval_libc_valid(trace_t *trace);
static void eval_libc_speed(void *ptr);

/* Routines for evaluating correctnes, space utilization, and speed
   of the student's malloc package in mm.c */
static int eval_mm_valid(trace_t *trace, range_t **ranges);
static double eval_mm_util(trace_t *trace, int tracenum);
static void eval_mm_speed(void *ptr);

/* Various helper routines */
static void printresults(int n, stats_t *stats, sum_stats_t *sumstats);
static void usage(void);
static void malloc_error(const trace_t *trace, int opnum, const char *fmt, ...)
    __attribute__((format(printf, 3,4)));
static void unix_error(const char *fmt, ...)
    __attribute__((format(printf, 1,2), noreturn));
static void app_error(const char *fmt, ...)
    __attribute__((format(printf, 1,2), noreturn));

static sigjmp_buf timeout_jmpbuf;

/* Timeout signal handler */
static void timeout_handler(int sig __attribute__((unused))) {
    fprintf(stderr, "The driver timed out after %d secs\n", set_timeout);
    errors = 1;
    longjmp(timeout_jmpbuf, 1);
}

/* Run the tests; return the number of tests run (may be less than
   num_tracefiles, if there's a timeout) */
static void run_tests(int num_tracefiles, const char *tracedir,
                      char **tracefiles, 
                      stats_t *mm_stats, range_t *ranges, speed_t *speed_params) {
    volatile int i;
    volatile int timed_out = 0;

    for (i=0; i < num_tracefiles; i++) {
        /* initialize simulated memory system in memlib.c *
         * start each trace with a clean system */
        mem_init();

        /* handle timeouts */
        if(setjmp(timeout_jmpbuf) != 0) {
            timed_out = 1;
        }

        trace_t *trace;
        trace = read_trace(&mm_stats[i], tracedir, tracefiles[i]);
        strcpy(mm_stats[i].filename, trace->filename);
        mm_stats[i].ops = trace->num_ops;
        if(timed_out) {
            mm_stats[i].valid = 0;
        } else {
            if (verbose > 1)
                printf("Checking mm_malloc for correctness, ");
            mm_stats[i].valid = eval_mm_valid(trace, &ranges);

            if (onetime_flag) {
                free_trace(trace);
                return;
            }
        }
        if (mm_stats[i].valid) {
            if (verbose > 1)
                printf("efficiency, ");
            mm_stats[i].util = eval_mm_util(trace, i);
            speed_params->trace = trace;
            speed_params->ranges = ranges;
            if (verbose > 1)
                printf("and performance.\n");
            mm_stats[i].secs = fsecs(eval_mm_speed, speed_params);
        }

        free_trace(trace);

        /* clean up memory system */
        mem_deinit();
    }
}

/**************
 * Main routine
 **************/
int main(int argc, char **argv)
{
    int i;
    char c;
    char **tracefiles = NULL;  /* null-terminated array of trace file names */
    int num_tracefiles = 0;    /* the number of traces in that array */

    range_t *ranges = NULL;    /* keeps track of block extents for one trace */
    stats_t *libc_stats = NULL;/* libc stats for each trace */
    stats_t *mm_stats = NULL;  /* mm (i.e. student) stats for each trace */
    speed_t speed_params;      /* input parameters to the xx_speed routines */

    int run_libc = 0;     /* If set, run libc malloc (set by -l) */
    int autograder = 0;   /* if set then called by autograder (-A) */
    int checkpoint = 0;

    /* temporaries used to compute the performance index */
    double secs, ops, util, avg_mm_util, avg_mm_throughput = 0, p1, p2, perfindex;
    double util_weight = 0, perf_weight = 0;
    int numcorrect;


    setbuf(stdout, 0);
    setbuf(stderr, 0);

    /*
     * Read and interpret the command line arguments
     */
    while ((c = getopt(argc, argv, "d:f:c:s:t:v:hpVAlD")) != EOF) {
        switch (c) {

        case 'A': /* Hidden Autolab driver argument */
            autograder = 1;
            break;
        case 'p':
            checkpoint = 1;
            break;

        case 'f': /* Use one specific trace file only (relative to curr dir) */
            num_tracefiles = 1;
            if ((tracefiles = realloc(tracefiles, 2 * sizeof(char *))) == NULL)
                unix_error("ERROR: realloc failed in main");
            strcpy(tracedir, "./");
            tracefiles[0] = strdup(optarg);
            tracefiles[1] = NULL;
            break;

        case 'c': /* Use one specific trace file and run only once */
            num_tracefiles = 1;
            onetime_flag = 1;
            if ((tracefiles = realloc(tracefiles, 2 * sizeof(char *))) == NULL)
                unix_error("ERROR: realloc failed in main");
            strcpy(tracedir, "./");
            tracefiles[0] = strdup(optarg);
            tracefiles[1] = NULL;
            break;

        case 't': /* Directory where the traces are located */
            if (num_tracefiles == 1) /* ignore if -f already encountered */
                break;
            strcpy(tracedir, optarg);
            if (tracedir[strlen(tracedir)-1] != '/')
                strcat(tracedir, "/"); /* path always ends with "/" */
            break;

        case 'l': /* Run libc malloc */
            run_libc = 1;
            break;

        case 'V': /* Increase verbosity level */
            verbose += 1;
            break;

        case 'v': /* Set verbosity level */
            verbose = atoi(optarg);
            break;

        case 'd':
            debug_mode = atoi(optarg);
            break;

        case 'D':
            debug_mode = DBG_EXPENSIVE;
            break;

        case 's':
            set_timeout = atoi(optarg);
            break;

        case 'h': /* Print this message */
            usage();
            exit(0);

        default:
            usage();
            exit(1);
        }
    }

    if (tracefiles == NULL) {
        tracefiles = default_tracefiles;
        num_tracefiles = sizeof(default_tracefiles) / sizeof(char *) - 1;
        printf("Using default tracefiles in %s\n", tracedir);
    }

    if(debug_mode != DBG_NONE) {
        init_random_data();
    }

    /* Initialize the timing package */
    init_fsecs();

    /* Initialize the timeout */
    if (set_timeout > 0) {
        signal(SIGALRM, timeout_handler);
        alarm(set_timeout); 
    }

    /*
     * Optionally run and evaluate the libc malloc package
     */
    if (run_libc) {
        if (verbose > 1)
            printf("\nTesting libc malloc\n");

        /* Allocate libc stats array, with one stats_t struct per tracefile */
        libc_stats = (stats_t *)calloc(num_tracefiles, sizeof(stats_t));
        if (libc_stats == NULL)
            unix_error("libc_stats calloc in main failed");

        /* Evaluate the libc malloc package using the K-best scheme */
        for (i=0; i < num_tracefiles; i++) {
            trace_t *trace = read_trace(&libc_stats[i], tracedir, tracefiles[i]);

            if (verbose > 1)
                printf("Checking libc malloc for correctness, ");
            libc_stats[i].valid = eval_libc_valid(trace);
            if (libc_stats[i].valid) {
                speed_params.trace = trace;
                if (verbose > 1)
                    printf("and performance.\n");
                libc_stats[i].secs = fsecs(eval_libc_speed, &speed_params);
            }
            free_trace(trace);
        }

        /* Display the libc results in a compact table and return the
           summary statistics */
        if (verbose) {
            printf("\nResults for libc malloc:\n");
            printresults(num_tracefiles, libc_stats, &global_libc_sum_stats);
        }
    }

    /*
     * Always run and evaluate the student's mm package
     */
    if (verbose > 1)
        printf("\nTesting mm malloc\n");

    /* Allocate the mm stats array, with one stats_t struct per tracefile */
    mm_stats = (stats_t *)calloc(num_tracefiles, sizeof(stats_t));
    if (mm_stats == NULL)
        unix_error("mm_stats calloc in main failed");

    run_tests(num_tracefiles, tracedir, tracefiles, mm_stats,
              ranges, &speed_params);


    /* Display the mm results in a compact table */
    if (verbose) {
        if (onetime_flag) {
            printf("\n\ncorrectness check finished, by running tracefile \"%s\".\n", tracefiles[num_tracefiles-1]);
            if (mm_stats[num_tracefiles-1].valid) {
                printf(" => correct.\n\n");
            } else {
                printf(" => incorrect.\n\n");
            }
        } else {
            printf("\nResults for mm malloc:\n");
            printresults(num_tracefiles, mm_stats, &global_mm_sum_stats);
            printf("\n");
        }
    }

    /* Optionally compare the performance of mm and libc */
    if (run_libc) {
        printf("Comparison with libc malloc: mm/libc = %.0f Kops / %.0f Kops = %.2f\n", 
               (float)global_mm_sum_stats.tput, (float)global_libc_sum_stats.tput,
               (float)(global_mm_sum_stats.tput/global_libc_sum_stats.tput));
    }

    /*
     * Accumulate the aggregate statistics for the student's mm package
     */
    secs = 0;
    ops = 0;
    util = 0;
    numcorrect = 0;
    

    /*
     * trace weight:
     * weight 1 => count both util and perf
     *        2 => count only util
     *        3 => count only perf
     */
    for (i=0; i < num_tracefiles; i++) {
        if(mm_stats[i].weight == WALL || mm_stats[i].weight == WPERF)
            {
                secs += mm_stats[i].secs;
                ops += mm_stats[i].ops;
                perf_weight++;
            }
        if(mm_stats[i].weight == WALL || mm_stats[i].weight == WUTIL)
            {
                util += mm_stats[i].util;
                util_weight++;
            }

        if (mm_stats[i].valid)
            numcorrect++;
    }

    if(util_weight == 0)
        avg_mm_util = 0;
    else
        avg_mm_util = util/util_weight;

    /*
     * Compute and print the performance index
     */
    if (errors == 0) {
        if(perf_weight == 0) {
            avg_mm_throughput = 0;
        }
        else {
            avg_mm_throughput = (secs == 0) ? 0 : ops/secs;
        }

#ifdef ALT_GRADING
        if (avg_mm_throughput < MIN_SPEED) {
            p2 = 0.0;
        } else if (avg_mm_throughput > MAX_SPEED) {
            p2 = 1.0;
        } else {
            p2 = (avg_mm_throughput - MIN_SPEED) / (MAX_SPEED - MIN_SPEED);
        }

        if (avg_mm_util < MIN_SPACE) {
            p1 = 0.0;
        } else if (avg_mm_util > MAX_SPACE) {
            p1 = 1.0;
        } else {
            p1 = (avg_mm_util - MIN_SPACE) / (MAX_SPACE - MIN_SPACE);
        }

        perfindex = p1 < p2 ? p1 * 100.0 : p2 * 100.0; 
        if(perfindex < 0.0) perfindex = 0.0;
        if(perfindex > 100.0) perfindex = 100.0;
#else
        if (avg_mm_util < MIN_SPACE) {
            p1 = 0.0;
        } else if (avg_mm_util > MAX_SPACE) {
            p1 = UTIL_WEIGHT;
        } else {
            p1 = (avg_mm_util - MIN_SPACE) / (MAX_SPACE - MIN_SPACE) * UTIL_WEIGHT;
        }

        if (avg_mm_throughput < MIN_SPEED) {
            p2 = 0.0;
        } else if (avg_mm_throughput > MAX_SPEED) {
            p2 = 1.0 - UTIL_WEIGHT;
        } else {
            p2 = (avg_mm_throughput - MIN_SPEED) / (MAX_SPEED - MIN_SPEED) * (1.0 - UTIL_WEIGHT);
        }

        perfindex = (p1 + p2)*100.0;
#endif


        printf("Perf index = %.0f (util) & %.0f (thru) = %.0f/100\n",
               p1*100,
               p2*100,
               perfindex);

    }
    else { /* There were errors */
        perfindex = 0.0;
        printf("Terminated with %d errors\n", errors);
    }

    /* Optionally emit autoresult string */
    double raw_score = perfindex;
    double checkpoint_score = perfindex;
    if (raw_score < PERF_THRESHHOLD) {
        raw_score = 0.0;
    }
    if (checkpoint_score < CHECKPOINT_THRESHOLD) {
        checkpoint_score = 0.0;
    }
    else {checkpoint_score = 100.0;}
    if (checkpoint) {
       printf("Checkpoint score = %f\n", checkpoint_score);
    }
    if (autograder) {
        sprintf(autoresult, "{\"scores\": {\"Autograded Score\": %.0f}, \"scoreboard\": [%.0f, %.0f, %.0f, %0.f\
]}",
                (float)raw_score, (float)raw_score, (float)perfindex,
                avg_mm_throughput/1000.0, avg_mm_util*100);
        printf("%s\n", autoresult);
    }
    exit(0);
}


/*****************************************************************
 * The following routines manipulate the range list, which keeps
 * track of the extent of every allocated block payload. We use the
 * range list to detect any overlapping allocated blocks.
 ****************************************************************/

/*
 * add_range - As directed by request opnum in trace tracenum,
 *     we've just called the student's mm_malloc to allocate a block of
 *     size bytes at addr lo. After checking the block for correctness,
 *     we create a range struct for this block and add it to the range list.
 */
static int add_range(range_t **ranges, char *lo, int size,
                     const trace_t *trace, int opnum, int index)
{
    char *hi = lo + size - 1;
    range_t *p;

    assert(size > 0);

    /* Payload addresses must be ALIGNMENT-byte aligned */
    if (!IS_ALIGNED(lo)) {
        malloc_error(trace, opnum,
                     "Payload address (%p) not aligned to %d bytes", lo, ALIGNMENT);
        return 0;
    }

    /* The payload must lie within the extent of the heap */
    if ((lo < (char *)mem_heap_lo()) || (lo > (char *)mem_heap_hi()) ||
        (hi < (char *)mem_heap_lo()) || (hi > (char *)mem_heap_hi())) {
        malloc_error(trace, opnum,
                     "Payload (%p:%p) lies outside heap (%p:%p)",
                     lo, hi, mem_heap_lo(), mem_heap_hi());
        return 0;
    }

    /* If we can't afford the linear-time loop, we check less thoroughly and
       just assume the overlap will be caught by writing random bits. */
    if(trace->ignore_ranges || debug_mode == DBG_NONE) return 1;


    /* The payload must not overlap any other payloads */
    for (p = *ranges;  p != NULL;  p = p->next) {
        if ((lo >= p->lo && lo <= p-> hi) ||
            (hi >= p->lo && hi <= p->hi)) {
            malloc_error(trace, opnum,
                         "Payload (%p:%p) overlaps another payload (%p:%p)\n",
                         lo, hi, p->lo, p->hi);
            return 0;
        }
    }

    /*
     * Everything looks OK, so remember the extent of this block
     * by creating a range struct and adding it the range list.
     */
    if ((p = (range_t *)malloc(sizeof(range_t))) == NULL)
        unix_error("malloc error in add_range");
    p->next = *ranges;
    p->lo = lo;
    p->hi = hi;
    p->index = index;
    *ranges = p;

    return 1;
}

/*
 * remove_range - Free the range record of block whose payload starts at lo
 */
static void remove_range(range_t **ranges, char *lo)
{
    range_t *p;
    range_t **prevpp = ranges;

    for (p = *ranges;  p != NULL; p = p->next) {
        if (p->lo == lo) {
            *prevpp = p->next;
            free(p);
            break;
        }
        prevpp = &(p->next);
    }
}

/*
 * clear_ranges - free all of the range records for a trace
 */
static void clear_ranges(range_t **ranges)
{
    range_t *p;
    range_t *pnext;

    for (p = *ranges;  p != NULL;  p = pnext) {
        pnext = p->next;
        free(p);
    }
    *ranges = NULL;
}

/**********************************************
 * The following routines handle the random data used for
 * checking memory access.
 *********************************************/

static void init_random_data(void) {
    int len;

    if(debug_mode == DBG_NONE) return;

    for(len = 0; len < RANDOM_DATA_LEN; ++len) {
        random_data[len] = random();
    }
}

static void randomize_block(trace_t *traces, int index) {
    size_t size;
    size_t i;
    randint_t *block;
    int base;

    if(debug_mode == DBG_NONE) return;

    traces->block_rand_base[index] = random();

    block = (randint_t*)traces->blocks[index];
    size = traces->block_sizes[index] / sizeof(*block);
    base = traces->block_rand_base[index];

    for(i = 0; i < size; i++) {
        block[i] = random_data[(base + i) % RANDOM_DATA_LEN];
    }
}

static void check_index(const trace_t *trace, int opnum, int index) {
    size_t size;
    size_t i;
    randint_t *block;
    int base;
    int ngarbled = 0;
    int firstgarbled = -1;

    if(index < 0) return; /* we're doing free(NULL) */
    if(debug_mode == DBG_NONE) return;

    block = (randint_t*)trace->blocks[index];
    size = trace->block_sizes[index] / sizeof(*block);
    base = trace->block_rand_base[index];

    for(i = 0; i < size; i++) {
        if(block[i] != random_data[(base + i) % RANDOM_DATA_LEN]) {
            if(firstgarbled == -1) firstgarbled = i;
            ngarbled++;
        }
    }
    if(ngarbled != 0) {
        malloc_error(trace, opnum, "block %d has %d garbled %s%s, "
                     "starting at byte %zu", index, ngarbled, randint_t_name,
                     ngarbled > 1 ? "s" : "", sizeof(randint_t) * firstgarbled);
    }
}

/**********************************************
 * The following routines manipulate tracefiles
 *********************************************/

/*
 * read_trace - read a trace file and store it in memory
 */
static trace_t *read_trace(stats_t *stats, const char *tracedir,
                           const char *filename)
{
    FILE *tracefile;
    trace_t *trace;
    char type[MAXLINE];
    int index, size;
    int max_index = 0;
    int op_index;

    if (verbose > 1)
        printf("Reading tracefile: %s\n", filename);

    /* Allocate the trace record */
    if ((trace = (trace_t *) malloc(sizeof(trace_t))) == NULL)
        unix_error("malloc 1 failed in read_trace");

    /* Read the trace file header */
    strcpy(trace->filename, tracedir);
    strcat(trace->filename, filename);
    if ((tracefile = fopen(trace->filename, "r")) == NULL) {
        unix_error("Could not open %s in read_trace", trace->filename);
    }
    fscanf(tracefile, "%d", &trace->weight);
    fscanf(tracefile, "%d", &trace->num_ids);
    fscanf(tracefile, "%d", &trace->num_ops);
    fscanf(tracefile, "%d", &trace->ignore_ranges);

    if(trace->weight < 0 || trace->weight > 3) {
        app_error("%s: weight can only be in {0, 1, 2 3}", trace->filename);
    }
    if(trace->ignore_ranges != 0 && trace->ignore_ranges != 1) {
        app_error("%s: ignore-ranges can only be zero or one", trace->filename);
    }

    /* We'll store each request line in the trace in this array */
    if ((trace->ops =
         (traceop_t *)malloc(trace->num_ops * sizeof(traceop_t))) == NULL)
        unix_error("malloc 2 failed in read_trace");

    /* We'll keep an array of pointers to the allocated blocks here... */
    if ((trace->blocks =
         (char **)calloc(trace->num_ids, sizeof(char *))) == NULL)
        unix_error("malloc 3 failed in read_trace");

    /* ... along with the corresponding byte sizes of each block */
    if ((trace->block_sizes =
         (size_t *)calloc(trace->num_ids,  sizeof(size_t))) == NULL)
        unix_error("malloc 4 failed in read_trace");

    /* and, if we're debugging, the offset into the random data */
    if ((trace->block_rand_base =
         calloc(trace->num_ids, sizeof(*trace->block_rand_base))) == NULL)
        unix_error("malloc 5 failed in read_trace");


    /* read every request line in the trace file */
    index = 0;
    op_index = 0;
    while (fscanf(tracefile, "%s", type) != EOF) {
        switch(type[0]) {
        case 'a':
            fscanf(tracefile, "%u %u", &index, &size);
            trace->ops[op_index].type = ALLOC;
            trace->ops[op_index].index = index;
            trace->ops[op_index].size = size;
            max_index = (index > max_index) ? index : max_index;
            break;
        case 'r':
            fscanf(tracefile, "%u %u", &index, &size);
            trace->ops[op_index].type = REALLOC;
            trace->ops[op_index].index = index;
            trace->ops[op_index].size = size;
            max_index = (index > max_index) ? index : max_index;
            break;
        case 'f':
            fscanf(tracefile, "%ud", &index);
            trace->ops[op_index].type = FREE;
            trace->ops[op_index].index = index;
            break;
        default:
            app_error("Bogus type character (%c) in tracefile %s\n",
                      type[0], trace->filename);
        }
        op_index++;
        if(op_index == trace->num_ops) break;
    }
    fclose(tracefile);
    assert(max_index == trace->num_ids - 1);
    assert(trace->num_ops == op_index);

    /* fill in the stats */
    strcpy(stats->filename, trace->filename);
    stats->weight = trace->weight;
    stats->ops = trace->num_ops;

    return trace;
}

/*
 * reinit_trace - get the trace ready for another run.
 */
static void reinit_trace(trace_t *trace)
{
    memset(trace->blocks, 0, trace->num_ids * sizeof(*trace->blocks));
    memset(trace->block_sizes, 0, trace->num_ids * sizeof(*trace->block_sizes));
    /* block_rand_base is unused if size is zero */
}

/*
 * free_trace - Free the trace record and the four arrays it points
 *              to, all of which were allocated in read_trace().
 */
static void free_trace(trace_t *trace)
{
    free(trace->ops);         /* free the three arrays... */
    free(trace->blocks);
    free(trace->block_sizes);
    free(trace->block_rand_base);
    free(trace);              /* and the trace record itself... */
}

/**********************************************************************
 * The following functions evaluate the correctness, space utilization,
 * and throughput of the libc and mm malloc packages.
 **********************************************************************/

/*
 * eval_mm_valid - Check the mm malloc package for correctness
 */
static int eval_mm_valid(trace_t *trace, range_t **ranges)
{
    int i;
    int index;
    size_t size;
    char *newp;
    char *oldp;
    char *p;

    /* Reset the heap and free any records in the range list */
    mem_reset_brk();
    clear_ranges(ranges);
    reinit_trace(trace);

    /* Call the mm package's init function */
    if (mm_init() < 0) {
        malloc_error(trace, 0, "mm_init failed.");
        return 0;
    }

    /* Interpret each operation in the trace in order */
    for (i = 0;  i < trace->num_ops;  i++) {
        index = trace->ops[i].index;
        size = trace->ops[i].size;

        if(debug_mode == DBG_EXPENSIVE) {
            range_t *r;
                        
            /* Let the students check their own heap */
            mm_checkheap(verbose);

            /* Now check that all our allocated blocks have the right data */
            r = *ranges;
            while(r) {
                check_index(trace, i, r->index);
                r = r->next;
            }
        }

        switch (trace->ops[i].type) {

        case ALLOC: /* mm_malloc */

            /* Call the student's malloc */
            if ((p = mm_malloc(size)) == NULL) {
                malloc_error(trace, i, "mm_malloc failed.");
                return 0;
            }

            /*
             * Test the range of the new block for correctness and add it
             * to the range list if OK. The block must be  be aligned properly,
             * and must not overlap any currently allocated block.
             */
            if (add_range(ranges, p, size, trace, i, index) == 0)
                return 0;

            /* Remember region */
            trace->blocks[index] = p;
            trace->block_sizes[index] = size;

            /* Set to random data, for debugging. */
            randomize_block(trace, index);
            break;

        case REALLOC: /* mm_realloc */
            check_index(trace, i, index);

            /* Call the student's realloc */
            oldp = trace->blocks[index];
            newp = mm_realloc(oldp, size);
            if( (newp == NULL) && (size != 0) ) {
                malloc_error(trace, i, "mm_realloc failed.");
                return 0;
            }
            if( (newp != NULL) && (size == 0) ) {
                malloc_error(trace, i, "mm_realloc with size 0 returned "
                             "non-NULL.");
                return 0;
            }


            /* Remove the old region from the range list */
            remove_range(ranges, oldp);

            /* Check new block for correctness and add it to range list */
            if (size > 0) {
                if(add_range(ranges, newp, size, trace, i, index) == 0)
                    return 0;
            }


            /* Move the region from where it was.
             * Check up to min(size, oldsize) for correct copying. */
            trace->blocks[index] = newp;
            if(size < trace->block_sizes[index]) {
                trace->block_sizes[index] = size;
            }
            check_index(trace, i, index);
            trace->block_sizes[index] = size;

            /* Set to random data, for debugging. */
            randomize_block(trace, index);
            break;

        case FREE: /* mm_free */
            check_index(trace, i, index);

            /* Remove region from list and call student's free function */
            if(index == -1) {
                p = 0;
            } else {
                p = trace->blocks[index];
                remove_range(ranges, p);
            }
            mm_free(p);
            break;

        default:
            app_error("Nonexistent request type in eval_mm_valid");
        }

    }

    /* As far as we know, this is a valid malloc package */
    return 1;
}

/*
 * eval_mm_util - Evaluate the space utilization of the student's package
 *   The idea is to remember the high water mark "hwm" of the heap for
 *   an optimal allocator, i.e., no gaps and no internal fragmentation.
 *   Utilization is the ratio hwm/heapsize, where heapsize is the
 *   size of the heap in bytes after running the student's malloc
 *   package on the trace. Note that our implementation of mem_sbrk()
 *   doesn't allow the students to decrement the brk pointer, so brk
 *   is always the high water mark of the heap.
 *
 *   A higher number is better: 1 is optimal.
 */
static double eval_mm_util(trace_t *trace, int tracenum)
{
    int i;
    int index;
    int size, newsize, oldsize;
    int max_total_size = 0;
    int total_size = 0;
    char *p;
    char *newp, *oldp;

    reinit_trace(trace);

    /* initialize the heap and the mm malloc package */
    mem_reset_brk();
    if (mm_init() < 0)
        app_error("trace %d: mm_init failed in eval_mm_util", tracenum);

    for (i = 0;  i < trace->num_ops;  i++) {
        switch (trace->ops[i].type) {

        case ALLOC: /* mm_alloc */
            index = trace->ops[i].index;
            size = trace->ops[i].size;

            if ((p = mm_malloc(size)) == NULL) {
                app_error("trace %d: mm_malloc failed in eval_mm_util",
                          tracenum);
            }

            /* Remember region and size */
            trace->blocks[index] = p;
            trace->block_sizes[index] = size;

            total_size += size;
            break;

        case REALLOC: /* mm_realloc */
            index = trace->ops[i].index;
            newsize = trace->ops[i].size;
            oldsize = trace->block_sizes[index];

            oldp = trace->blocks[index];
            if ((newp = mm_realloc(oldp,newsize)) == NULL && newsize != 0) {
                app_error("trace %d: mm_realloc failed in eval_mm_util",
                          tracenum);
            }

            /* Remember region and size */
            trace->blocks[index] = newp;
            trace->block_sizes[index] = newsize;

            total_size += (newsize - oldsize);
            break;

        case FREE: /* mm_free */
            index = trace->ops[i].index;
            if(index < 0) {
                size = 0;
                p = 0;
            } else {
                size = trace->block_sizes[index];
                p = trace->blocks[index];
            }

            mm_free(p);

            total_size -= size;
            break;

        default:
            app_error("trace %d: Nonexistent request type in eval_mm_util",
                      tracenum);
        }

        /* update the high-water mark */
        max_total_size = (total_size > max_total_size) ?
            total_size : max_total_size;
    }

    printf(".");

    return ((double)max_total_size / (double)mem_heapsize());
}


/*
 * eval_mm_speed - This is the function that is used by fcyc()
 *    to measure the running time of the mm malloc package.
 */
static void eval_mm_speed(void *ptr)
{
    int i, index, size, newsize;
    char *p, *newp, *oldp, *block;
    trace_t *trace = ((speed_t *)ptr)->trace;
    reinit_trace(trace);

    /* Reset the heap and initialize the mm package */
    mem_reset_brk();
    if (mm_init() < 0)
        app_error("mm_init failed in eval_mm_speed");

    /* Interpret each trace request */
    for (i = 0;  i < trace->num_ops;  i++)
        switch (trace->ops[i].type) {

        case ALLOC: /* mm_malloc */
            index = trace->ops[i].index;
            size = trace->ops[i].size;
            if ((p = mm_malloc(size)) == NULL)
                app_error("mm_malloc error in eval_mm_speed");
            trace->blocks[index] = p;
            break;

        case REALLOC: /* mm_realloc */
            index = trace->ops[i].index;
            newsize = trace->ops[i].size;
            oldp = trace->blocks[index];
            if ((newp = mm_realloc(oldp,newsize)) == NULL && newsize != 0)
                app_error("mm_realloc error in eval_mm_speed");
            trace->blocks[index] = newp;
            break;

        case FREE: /* mm_free */
            index = trace->ops[i].index;
            if(index < 0) {
                block = 0;
            } else {
                block = trace->blocks[index];
            }
            mm_free(block);
            break;

        default:
            app_error("Nonexistent request type in eval_mm_speed");
        }
}

/*
 * eval_libc_valid - We run this function to make sure that the
 *    libc malloc can run to completion on the set of traces.
 *    We'll be conservative and terminate if any libc malloc call fails.
 *
 */
static int eval_libc_valid(trace_t *trace)
{
    int i, newsize;
    char *p, *newp, *oldp;

    reinit_trace(trace);

    for (i = 0;  i < trace->num_ops;  i++) {
        switch (trace->ops[i].type) {

        case ALLOC: /* malloc */
            if ((p = malloc(trace->ops[i].size)) == NULL) {
                malloc_error(trace, i, "libc malloc failed");
                unix_error("System message");
            }
            trace->blocks[trace->ops[i].index] = p;
            break;

        case REALLOC: /* realloc */
            newsize = trace->ops[i].size;
            oldp = trace->blocks[trace->ops[i].index];
            if ((newp = realloc(oldp, newsize)) == NULL && newsize != 0) {
                malloc_error(trace, i, "libc realloc failed");
                unix_error("System message");
            }
            trace->blocks[trace->ops[i].index] = newp;
            break;

        case FREE: /* free */
            if(trace->ops[i].index >= 0) {
                free(trace->blocks[trace->ops[i].index]);
            } else {
                free(0);
            }
            break;

        default:
            app_error("invalid operation type  in eval_libc_valid");
        }
    }

    return 1;
}

/*
 * eval_libc_speed - This is the function that is used by fcyc() to
 *    measure the running time of the libc malloc package on the set
 *    of traces.
 */
static void eval_libc_speed(void *ptr)
{
    int i;
    int index, size, newsize;
    char *p, *newp, *oldp, *block;
    trace_t *trace = ((speed_t *)ptr)->trace;

    reinit_trace(trace);

    for (i = 0;  i < trace->num_ops;  i++) {
        switch (trace->ops[i].type) {
        case ALLOC: /* malloc */
            index = trace->ops[i].index;
            size = trace->ops[i].size;
            if ((p = malloc(size)) == NULL)
                unix_error("malloc failed in eval_libc_speed");
            trace->blocks[index] = p;
            break;

        case REALLOC: /* realloc */
            index = trace->ops[i].index;
            newsize = trace->ops[i].size;
            oldp = trace->blocks[index];
            if ((newp = realloc(oldp, newsize)) == NULL && newsize != 0)
                unix_error("realloc failed in eval_libc_speed\n");

            trace->blocks[index] = newp;
            break;

        case FREE: /* free */
            index = trace->ops[i].index;
            if(index >= 0) {
                block = trace->blocks[index];
                free(block);
            } else {
                free(0);
            }
            break;
        }
    }
}

/*************************************
 * Some miscellaneous helper routines
 ************************************/


/*
 * printresults - prints a performance summary for some malloc package and returns
 *                a summary of the stats to the caller. 
 */
static void printresults(int n, stats_t *stats, sum_stats_t *sumstats)
{
    int i;

    /* weighted sums all */
    double sumsecs = 0;
    double sumops  = 0;
    double sumutil = 0;
    int sum_perf_weight = 0;
    int sum_util_weight = 0;

    char wstr;

    /* Print the individual results for each trace */
    printf("  %2s%6s %5s%8s%9s  %s\n",
           "valid", "util", "ops", "secs", "Kops", "trace");
    for (i=0; i < n; i++) {
        if (stats[i].valid) {
            switch(stats[i].weight)
                {
                case WNONE:
                    wstr = ' ';
                    break;
                case WALL:
                    wstr = '*';
                    break;
                case WUTIL:
                    wstr = 'u';
                    break;
                case WPERF:
                    wstr = 'p';
                    break;
                default:
                    app_error("wrong value for weight found!");
                }

            /* prints done in a somewhat silly way to avoid hassle
             * if future columns need to be added/modified like this time */

            printf("%2c", wstr);
            printf("%4s", "yes");

            /* print '--' if util isn't weighted */
            if(stats[i].weight == WNONE || stats[i].weight == WALL
               || stats[i].weight == WUTIL)
                printf(" %5.0f%%", stats[i].util * 100.0);
            else
                printf(" %6s", "--");

            /* print '--' if perf isn't weighted */
            if(stats[i].weight == WNONE || stats[i].weight == WALL
               || stats[i].weight == WPERF)
                printf("%8.0f%10.6f%6.0f", stats[i].ops, stats[i].secs,
                       (stats[i].ops/1e3)/stats[i].secs);
            else
                printf("%8s%10s%6s", "--", "--", "--");

            printf(" %s\n", stats[i].filename);

            if(stats[i].weight == WALL || stats[i].weight == WPERF)
                {
                    sum_perf_weight += 1;
                    sumsecs += stats[i].secs;
                    sumops += stats[i].ops;
                }
            if(stats[i].weight == WALL || stats[i].weight == WUTIL)
                {
                    sum_util_weight += 1;
                    sumutil += stats[i].util;
                }
        }
        else {
            printf("%2s%4s %6s%8s%10s%6s %s\n",
                   stats[i].weight != 0 ? "*" : "",
                   "no",
                   "-",
                   "-",
                   "-",
                   "-",
                   stats[i].filename);
        }
    }

    /* Print the aggregate results for the set of traces */
    if (errors == 0) {
        if(sum_perf_weight == 0) 
            sum_perf_weight = 1;
        if(sum_util_weight == 0) 
            sum_util_weight = 1;

        double util = (sumutil/(double)sum_util_weight)*100.0;
        double tput = (sumsecs==0.0) ? 0 : (sumops/1e3)/sumsecs;
        printf("%2d %2d  %5.0f%%%8.0f%10.6f%6.0f\n",
               sum_util_weight,
               sum_perf_weight,
               util,
               sumops,
               sumsecs,
               tput);

        /* Record the summary statistics so we can compare libc and
           mm.cc */
        sumstats->util = util;
        sumstats->ops = sumops;
        sumstats->secs = sumsecs;
        sumstats->tput = tput;
    }
    else {
        printf("     %8s%10s%6s\n",
               "-",
               "-",
               "-");

        /* Record the summary statistics so we can compare libc and
           mm.c */
        sumstats->util = 0;
        sumstats->ops = 0;
        sumstats->secs = 0;
        sumstats->tput = 0;
    }
}

/*
 * app_error - Report an arbitrary application error
 */
void app_error(const char *fmt, ...) {
    va_list ap;
    va_start(ap, fmt);
    vprintf(fmt, ap);
    va_end(ap);
    exit(1);
}

/*
 * unix_error - Report the error and its errno.
 */
void unix_error(const char *fmt, ...) {
    va_list ap;
    va_start(ap, fmt);
    vprintf(fmt, ap);
    printf(": %s\n", strerror(errno));
    va_end(ap);
    exit(1);
}

/*
 * malloc_error - Report an error returned by the mm_malloc package
 */
void malloc_error(const trace_t *trace, int opnum, const char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);

    errors++;

    printf("ERROR [trace %s, line %d]: ", trace->filename, LINENUM(opnum));
    vprintf(fmt, ap);
    putchar('\n');

    va_end(ap);
}

/*
 * usage - Explain the command line arguments
 */
static void usage(void)
{
    fprintf(stderr, "Usage: mdriver [-hlVdD] [-f <file>]\n");
    fprintf(stderr, "Options\n");
    fprintf(stderr, "\t-p         Calculate Checkpoint Score.\n");
    fprintf(stderr, "\t-d <i>     Debug: 0 off; 1 default; 2 lots.\n");
    fprintf(stderr, "\t-D         Equivalent to -d2.\n");
    fprintf(stderr, "\t-c <file>  Run trace file <file> once, check for correctness only.\n");
    fprintf(stderr, "\t-t <dir>   Directory to find default traces.\n");
    fprintf(stderr, "\t-h         Print this message.\n");
    fprintf(stderr, "\t-l         Run libc malloc as well.\n");
    fprintf(stderr, "\t-V         Print diagnostics as each trace is run.\n");
    fprintf(stderr, "\t-v <i>     Set Verbosity Level to <i>\n");
    fprintf(stderr, "\t-s <s>     Timeout after s secs (default no timeout)\n");
    fprintf(stderr, "\t-f <file>  Use <file> as the trace file.\n");
}
