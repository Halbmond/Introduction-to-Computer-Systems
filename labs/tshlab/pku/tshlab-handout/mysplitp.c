/* 
 * mysplitp.c - Shell lab test program
 * 
 * Version of mysplit that sends a SIGTSTP to the shell and then exits
 * immediately when restarted. Useful for testing a shell's ability to
 * restart every stopped process in the foreground process group.
 *
 * Usage: ./mysplits [secs] 
 */

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/wait.h>

#include "config.h"

char buf[MAXBUF];

int main(int argc, char **argv) 
{
    pid_t child_pid;

    /* Child waits to be stopped by parent */
    if ((child_pid = fork()) == 0) {
	while(1);
	exit(0);
    }

    /* Parent stops child and then self */
    if (kill(child_pid, SIGTSTP) < 0) {
	perror("kill1");
	exit(1);
    }
    if (kill(getpid(), SIGTSTP) < 0) {
	perror("kill2");
	exit(1);
    }

    /* Parent terminates after being restarted, killing child */
    if (kill(child_pid, SIGTERM) < 0) {
	perror("kill3");
	exit(1);
    }
    
    exit(0);
}

