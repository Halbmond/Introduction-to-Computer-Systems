/* 
 * myspin2 - Shell lab test program. 
 *
 * When called by the shell driver, it synchronizes using a two-way
 * handshake. This allows the driver to know that the job is available
 * to receive signals. If it doesn't hear from the driver after some
 * period of time, then it times out and terminates.
 * 
 * When called standalone, it sleeps for [secs] seconds and then 
 * exits. If no argument is given, it sleeps for a default number
 * of seconds. 
 * 
 * Usage: ./myspin2 [secs]
 */

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <string.h>

#include "config.h"

char buf[MAXBUF];

void sigalrm_handler(int signum) 
{
    exit(0);
}

int main(int argc, char **argv) 
{
    int rc;
    int syncfd;
    int standalone;
    char *str;
    char *cmdp;
    struct stat stat;

    signal(SIGALRM, sigalrm_handler);

    /* 
     * Determine if the shell is running standalone or under the
     * control of the driver program. If running under the driver, get
     * the number of the driver's synchronizing domain socket
     * descriptor.  
     */
    standalone = 1;
    if ((str = getenv("SYNCFD")) != NULL) {
	syncfd = atoi(str);              /* Get descriptor number */
	if (fstat(syncfd, &stat) != -1)  /* Is is open? */
	    standalone = 0;
    }

    /* 
     * If the job is being run by the driver, then synchronize with
     * the driver over its synchronizing domain socket.  Ignore any
     * command line argument.  
     */

    if (!standalone) {
	alarm(JOB_TIMEOUT);
	cmdp = "";
	if ((rc = send(syncfd, cmdp, strlen(cmdp), 0)) < 0) {
	    perror("send");
	    exit(1);
	}

	if ((rc = recv(syncfd, buf, MAXBUF, 0)) < 0) {
	    perror("recv");
	    exit(1);
	}
	exit(0);
    }

    /*
     * Otherwise spin until timing out 
     */
    else {
	if (argc > 1)
	    alarm(atoi(argv[1]));
	else
	    alarm(JOB_TIMEOUT);

	while(1);
    }

    /* Control should never reach here */
    exit(1);
}


