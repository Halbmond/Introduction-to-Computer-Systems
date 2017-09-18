/*
 * sdriver.c - Autolab version of the CS:APP Shell Lab Driver
 *
 * Uses a collection of trace files to test a shell implementation.
 *
 * Introduces non-determinism in the fork() function call to 
 * identify erroneous races in the student code.
 *  
 * Copyright (c) 2004-2011, R. Bryant and D. O'Hallaron
 */
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <assert.h>
#include <float.h>
#include <time.h>
#include <sys/stat.h>

//#include "driverlib.h"
#include "config.h"

/* Prototypes */
void usage(void);
int runtrace(char *tracefile);
void delete_tmpfiles(void);
void emit_file(char *filename);

/* 
 * Perl program that filters a shell output file:
 *
 * (1) Elides all whitespace. 
 * (2) Converts PIDs of the form "(12345)" to "(PID)". 
 *
 * These transformations allow us to do diffs on the outputs of 
 * different runs of different shells.  
 */
#define PERLPROG "while(<>){chomp; s/\\s+//g; s/\\(\\d+\\)/\\(PID\\)/g; print \"$_\"}"

/********************
 * Global variables
 *******************/
int verbose = 0;            /* Global flag for verbose output (-V) */
char *shellprog = "./tsh";  /* Name of test shell (-s) */
int sandboxing = 0;         /* Enable sandboxing (-x) */
int autograded = 0;         /* Set only on the Autolab server (-A) */
int num_iters=ITERS;        /* How many times to test each trace file */

/* Null-terminated list of trace files */
static char *default_tracefiles[] = {TRACEFILES, NULL};

/* Autolab buffers */
char autoresult[MAXBUF]; /* Autolab autoresult string */  
char status[MAXBUF];

/* Temp filenames for unfiltered shell output */
char ref_raw_outfile[MAXBUF];
char test_raw_outfile[MAXBUF];
char diff_raw_outfile[MAXBUF];

/* Temp filenames for filtered shell output */
char ref_filtered_outfile[MAXBUF];
char test_filtered_outfile[MAXBUF];
char diff_filtered_outfile[MAXBUF];

/**************
 * Main routine
 **************/
int main(int argc, char **argv)
{
    int i, j;
    char c;
    int pid;
    int current_time;

    int correct[MAXTRACES];    /* True if trace i is correct */
    int num_correct;           /* Number of correct traces */ 

    char **tracefiles = NULL;  /* Null-terminated array of trace file names */
    int num_tracefiles = 0;    /* The number of traces in that array */
    int tracenum;              /* Number of trace file to test (-t) */
    int singletrace = 0;       /* Are we testing one trace or all? (-t) */
    int num_iters_specified = 0; /* True if the user specifed the i flag */

    struct stat statbuf;

    /* Set up the default list of tracefiles */
    tracefiles = default_tracefiles;
    num_tracefiles = sizeof(default_tracefiles) / sizeof(char *) - 1;

    /* 
     * Read and interpret the command line arguments 
     */
    while ((c = getopt(argc, argv, "Ai:t:s:hVx")) != EOF) {
        switch (c) {

        case 'A': /* hidden Autolab driver argument */
            autograded = 1;
            break;

        case 'i': /* number of iterations to test each function */
            num_iters = atoi(optarg);
            if (num_iters < 1) {
                printf("Error: Invalid number of iters (-i)\n");
                usage();
            }
            num_iters_specified = 1;
            break;

        case 's':  /* The name of the test shell (default ./tsh) */
            shellprog = strdup(optarg);
            break;

        case 't': /* Trace number to test */
            tracenum = atoi(optarg);
            singletrace = 1;
            if (tracenum < 0 || tracenum >= num_tracefiles) {
                printf("Error: Invalid trace number (-t)\n");
                usage();
            }
            verbose++;
            break;

        case 'V': /* Increase verbosity level */
            verbose++;
            break;

        case 'x': /* Enable sandboxing (hidden flag used by autograder) */
            sandboxing = 1;
            break;

        case 'h': /* Print help */
            usage();
            exit(0);

        default:
            usage();
            exit(1);
        }
    }
		
    /* Make sure the requested shell is executable */
    if (stat(shellprog, &statbuf) < 0) {
        fprintf(stderr, "%s: File not found\n", shellprog);
        exit(1);
    }
    if (!(statbuf.st_mode & S_IXUSR)) {
        fprintf(stderr, "%s: File is not executable\n", shellprog);
        exit(1);
    } 

    if (singletrace && autograded) {
        printf("Warning: -A flag is ignored when testing single traces\n");
    }

    /* Get the current time stamp and PID */
    current_time = (int) time(NULL);
    pid = (int) getpid();

    /* Generate some (truly) unique filenames in /usr/tmp */
    sprintf(test_raw_outfile, 
            "/tmp/test_raw_outfile.%d.%d", current_time, pid);
    sprintf(ref_raw_outfile, 
            "/tmp/ref_raw_outfile.%d.%d", current_time, pid);
    sprintf(diff_raw_outfile, 
            "/tmp/diff_raw_outfile.%d.%d", current_time, pid);

    sprintf(test_filtered_outfile, 
            "/tmp/test_filtered_outfile.%d.%d", current_time, pid);
    sprintf(ref_filtered_outfile, 
            "/tmp/ref_filtered_outfile.%d.%d", current_time, pid);
    sprintf(diff_filtered_outfile, 
            "/tmp/diff_filtered_outfile.%d.%d", current_time, pid);

    /* Evaluate a single tracefile */
    if (singletrace) {
        num_correct = 0;
        num_iters = num_iters_specified ? num_iters : 1;
        if (num_iters_specified) {
            printf("Running %d iters of %s\n", num_iters, tracefiles[tracenum]);
        }
        for (j = 0; j < num_iters; j++) {
            if (num_iters_specified) {
                printf("%d. Running %s...\n", j+1, tracefiles[tracenum]);
            }
            else {
                printf("Running %s...\n", tracefiles[tracenum]);
            }
            fflush(stdout);
            if (runtrace(tracefiles[tracenum])) {
                num_correct++;
            }
        }
        printf("\n");
        printf("Summary: %d/%d correct iterations\n", num_correct, num_iters);
    }

    /* Evaluate all trace files */
    else {
        num_correct = 0;
        for (i = 0; i < num_tracefiles; i++) {
            if (num_iters > 1) 
                printf("Running %d iters of %s\n", num_iters, tracefiles[i]);
            for (j = 0; j < num_iters; j++) {
                if (num_iters > 1) 
                    printf("%d. Running %s...\n", j+1, tracefiles[i]);
                else
                    printf("Running %s...\n", tracefiles[i]);

                /* Run the trace interpreter on trace i */
                correct[i] = runtrace(tracefiles[i]);
                if (!correct[i]) {
                    break;
                }
            }
		    
            if (correct[i])
                num_correct++;
        }

        printf("Score: %d/%d\n", num_correct*4, num_tracefiles*4);

        /* 
         * Emit the JSON autoresult
         */
        if (autograded) {
            int first = 1;
            sprintf(autoresult, "{\"scores\": {\"Correctness\": %d}, \"scoreboard\": [%d,", num_correct*4, num_correct*4);
            for (i = 0; i < num_tracefiles; i++) {
                if (first) {
                    first = 0;
                    strcat(autoresult, correct[i] ? "\"y\"" : "\"n\"");
                }
                else {
                    strcat(autoresult, correct[i] ? ",\"y\"" : ",\"n\"");
                }
            }
            strcat(autoresult, "]}");
            printf("%s\n", autoresult);
        }
    }

    /* Clean up */
    delete_tmpfiles();
    exit(0);
}

/*
 * runtrace - Run trace file on test and reference shells
 *            Return 0 if results are different, 1 if identical
 */
int runtrace(char *tracefile)
{ 
    int status;
    char buf[MAXBUF];
    struct stat statbuf;

    if (stat(tracefile, &statbuf) < 0) {
        printf("%s: trace file not found", tracefile);
        exit(1);
    }

    /* Run the student's test shell */
    if (sandboxing)
        sprintf(buf, "./runtrace -x -s %s -f %s > %s\n", 
                shellprog, tracefile, test_raw_outfile);
    else
        sprintf(buf, "./runtrace -s %s -f %s > %s\n", 
                shellprog, tracefile, test_raw_outfile);

    if (system(buf) != 0) {
        printf("sdriver unable to run %s\n", buf);
    }
    
    /* Run the reference shell */
    sprintf(buf, "./runtrace -s ./tshref -f %s > %s\n", 
            tracefile, ref_raw_outfile);
    if (system(buf) != 0) {
        emit_file(ref_raw_outfile);
        printf("sdriver unable to run %s\n", buf);
        delete_tmpfiles();
        exit(1);
    }
    
    /* Filter the test and reference outputs */
    sprintf(buf, "perl -e '%s' < %s | sort > %s", 
            PERLPROG, test_raw_outfile, test_filtered_outfile);
    system(buf);
    
    sprintf(buf, "perl -e '%s' < %s | sort > %s", 
            PERLPROG, ref_raw_outfile, ref_filtered_outfile);
    system(buf);
    
    /* Diff the filtered output files */
    sprintf(buf, "diff %s %s > %s\n", 
            test_filtered_outfile, ref_filtered_outfile, diff_filtered_outfile);
    status = system(buf);
    
    /* Filtered output files were different */
    if (status != 0) {
        sprintf(buf, "diff %s %s > %s\n", 
                test_raw_outfile, ref_raw_outfile, diff_raw_outfile);
        system(buf);

        printf("Oops: test and reference outputs for %s differed.\n", 
               tracefile);
        printf("\n");

        printf("Test output:\n");
        emit_file(test_raw_outfile);
        printf("\n");

        printf("Reference output:\n");
        emit_file(ref_raw_outfile);
        printf("\n");

        printf("Output of 'diff test reference':\n");
        emit_file(diff_raw_outfile);
        printf("\n");

        return 0;
    }
    
    /* Filtered output files were identical */
    if (verbose) {
        printf("Success: The test and reference outputs for %s matched!\n", tracefile);
    }
    if (verbose > 1) {
        printf("Test output:\n");
        emit_file(test_raw_outfile);
        printf("\n");
        printf("Reference output:\n");
        fflush(stdout);
        emit_file(ref_raw_outfile);
        printf("\n");
    }

    return 1;
}

/*
 * emit_file - prints an ascii file to stdout
 */
void emit_file(char *filename) 
{
    FILE *fp;
    char buf[MAXBUF];

    if ((fp = fopen(filename, "r")) == NULL) {
        printf("fopen error: Unable to open file %s\n", filename);
        exit(1);
    }
    while(fgets(buf, MAXBUF, fp)) {
        printf("%s", buf);
    }
    fclose(fp);
}

/*
 * delete_tmpfiles - Clean up the temp files we created during testing
 */
void delete_tmpfiles()
{
    char buf[MAXBUF];
    sprintf(buf, "rm -rf %s %s %s %s %s %s",
            test_raw_outfile, ref_raw_outfile, diff_raw_outfile,
            test_filtered_outfile, ref_filtered_outfile, diff_filtered_outfile);
    system(buf);
}

/* 
 * usage - Explain the command line arguments
 */
void usage(void) 
{
    printf("Usage: sdriver [-hV] [-s <shell> -t <tracenum> -i <iters>]\n");
    printf("Options\n");
    printf("\t-h           Print this message.\n");
    printf("\t-i <iters>   Run each trace <iters> times (default %d)\n", 
           num_iters);
    printf("\t-s <shell>   Name of test shell (default ./tsh)\n");
    printf("\t-t <n>       Run trace <n> only (default all)\n");
    printf("\t-V           Be more verbose.\n");
    exit(0);
}
