#ifndef __CONFIG_H_
#define __CONFIG_H_

/*
 * config.h - malloc lab configuration file
 *
 * Copyright (c) 2002, R. Bryant and D. O'Hallaron, All rights reserved.
 * May not be used, modified, or copied without permission.
 */

/* 
 * Perfindices below the threshhold receive a score of zero
 */
#define PERF_THRESHHOLD 50.0
#define CHECKPOINT_THRESHOLD 40.0

/*
 * This is the default path where the driver will look for the
 * default tracefiles. You can override it at runtime with the -t flag.
 */
#define TRACEDIR "./traces/"

/*
 * This is the list of default tracefiles in TRACEDIR that the driver
 * will use for testing. Modify this if you want to add or delete
 * traces from the driver's test suite.
 */
#define DEFAULT_TRACEFILES \
    "alaska.rep", \
    "amptjp.rep", \
    "bash.rep", \
    "boat.rep",\
    "cccp.rep", \
    "chrome.rep", \
    "coalesce-big.rep",  \
    "coalescing-bal.rep", \
    "corners.rep", \
    "cp-decl.rep", \
    "exhaust.rep", \
    "firefox.rep", \
    "firefox-reddit.rep", \
    "hostname.rep", \
    "login.rep", \
    "lrucd.rep", \
    "ls.rep", \
    "malloc.rep", \
    "malloc-free.rep", \
    "needle.rep", \
    "nlydf.rep", \
    "perl.rep", \
    "qyqyc.rep", \
    "random.rep", \
    "random2.rep", \
    "rm.rep", \
    "rulsr.rep",\
    "seglist.rep", \
    "short2.rep"

/*
 * If this is uncommented, then use "alt grading", in which
 * final_score = min(util_score, perf_score), which prevents
 * an unbalanced allocator from getting a good score. Alt
 * grading ignores UTIL_WEIGHT, as both util and perf are graded
 * on a scale from 0 to 100.
 */
//#define ALT_GRADING


/*
 * Students get 0 points for this point or below (ops / sec)
 */
#define MIN_SPEED       0000E3


/*
 * Students get 0 points for this allocation fraction or below
 */
#define MIN_SPACE       0.60


/* 
 * Students can get more points for building faster allocators, up to
 * this point (in ops / sec)
 */
#define MAX_SPEED       13000E3

/* 
 * Students can get more points for building more efficient allocators,
 * up to this point (1 is perfect).
 */
#define MAX_SPACE       0.92

 /*
  * This constant determines the contributions of space utilization
  * (UTIL_WEIGHT) and throughput (1 - UTIL_WEIGHT) to the performance
  * index.
  */

#define UTIL_WEIGHT .61

/*
 * Alignment requirement in bytes (either 4 or 8)
 */
#define ALIGNMENT 8

/*
 * Maximum heap size in bytes
 */
#define MAX_HEAP (100*(1<<20))  /* 100 MB */

/*****************************************************************************
 * Set exactly one of these USE_xxx constants to "1" to select a timing method
 *****************************************************************************/
#define USE_FCYC   1   /* cycle counter w/K-best scheme (x86 & Alpha only) */
#define USE_ITIMER 0   /* interval timer (any Unix box) */
#define USE_GETTOD 0   /* gettimeofday (any Unix box) */

#endif /* __CONFIG_H */
