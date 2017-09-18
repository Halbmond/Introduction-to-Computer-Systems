/* 
 * mytstps.c - Sends a SIGTSTP to itself, terminates when restarted.
 */ 
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <signal.h>
#include <stdlib.h>

int main() 
{
    if (kill(getpid(), SIGTSTP) < 0) {
	perror("kill");
	exit(1);
    }
    exit(0);
}
