/*
 * config.h - Configuration file for the Autolab Shell Lab.
 */

/**************************************************************
 * Other configuration variables (LAB DEVELOPER only)
 * Note: Instructors should not modify anything in this section
 ***************************************************************/

/* How many seconds does the driver wait for something before timing out */
#define DRIVER_TIMEOUT 4

/* How many seconds does a shell job run before timing out */
#define JOB_TIMEOUT 10

/* The list of tracefiles that the driver will use for testing. */
#define TRACEFILES \
  "trace00.txt",\
  "trace01.txt",\
  "trace02.txt",\
  "trace03.txt",\
  "trace04.txt",\
  "trace05.txt",\
  "trace06.txt",\
  "trace07.txt",\
  "trace08.txt",\
  "trace09.txt",\
  "trace10.txt",\
  "trace11.txt",\
  "trace12.txt",\
  "trace13.txt",\
  "trace14.txt",\
  "trace15.txt",\
  "trace16.txt",\
  "trace17.txt",\
  "trace18.txt",\
  "trace19.txt",\
  "trace20.txt",\
  "trace21.txt",\
  "trace22.txt",\
  "trace23.txt",\
  "trace24.txt"

/* Various constants */
#define ITERS 3
#define MAXBUF 1024
#define MAXARGS 1024
#define MAXTRACES 128
#define PROMPT "tsh> "

