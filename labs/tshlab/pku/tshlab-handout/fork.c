/*
 * fork.c - Wrapper for fork() that introduces non-determinism
 *          in the order that the parent and child are executed
 */
#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

/* Sleep for a random period between 0 and MAX_SLEEP microseconds */
#define MAX_SLEEP 100000

#define CONVERT(val) (((double)val)/(double)RAND_MAX)

struct timeval time;

pid_t __real_fork(void);

/*
 * __wrap_fork - Link-time wrapper for fork() that introduces
 * non-determinism in the order that parent and child are executed.
 * After calling fork, randomly decide whether to sleep for a random
 * period in either the parent or child process, which results in
 * yielding control to the other process.  Based on a link-time
 * positioning technique: Given the -Wl,--wrap,fork argument, the linker
 * replaces all references to fork to __wrap_fork(), and all
 * references to __real_fork to fork().
 */
pid_t __wrap_fork(void)
{
    gettimeofday(&time, NULL);
    srand(time.tv_usec);

    unsigned bool = (unsigned)(CONVERT(rand()) + 0.5);
    unsigned secs = (unsigned)(CONVERT(rand()) * MAX_SLEEP);

    /* Call the real fork function */
    pid_t pid = __real_fork();

    /* Randomly decide to sleep in the parent or the child */
    if (pid == 0) {
	if(bool) {
	    usleep(secs);
	}
    }
    else {
	if (!bool) {
	    usleep(secs);
	}
    }

    /* Return the PID like a normal fork call */
    return pid;
}
