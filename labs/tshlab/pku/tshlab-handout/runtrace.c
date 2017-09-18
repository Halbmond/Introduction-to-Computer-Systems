/* 
 * runtrace.c - Shell lab trace execution program
 *
 * Runs a tiny shell on a trace file.
 *
 * Copyright (c) 2004, R. Bryant and D. O'Hallaron, All rights reserved.
 * May not be used, modified, or copied without permission.
 */
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <signal.h>
#include <ctype.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <sys/stat.h>
#include "config.h"

#define MAXBUF 1024

/* 
 * Global variables 
 */
char buf[MAXBUF];
char line[MAXBUF];
char command[MAXBUF];
extern char **environ;
char *state;

/* Modified by command line args */
int verbose = 0;
int sandboxing = 0;
char *tracefile = NULL;
char *shellprog = "./tsh";
char *shellargs = NULL;

/* domain socket pairs */
int datafd[2];
int syncfd[2];

/* Prototypes */
void usage(char *msg);
int blankline(char *str);
void print_child_status(void);
int next_prompt(void);
int readable(int fd, int secs);
void clean(void);

/*
 * sigalrm_handler - Notify when we timeout waiting for the child
 */
void sigalrm_handler(int sig) 
{
    printf("%s: Runtrace timed out while %s.\n", tracefile, state);
    clean();
    exit(1);
}

/* Main routine */
int main(int argc, char **argv) 
{
    char *shellargv[MAXARGS];
    int child_pid;
    char c;
    char *bufp;
    FILE *tracefp;
    int n=0; /* keep gcc happy */
    struct stat statbuf;
    
    /* Install the signal handler */
    signal(SIGALRM, sigalrm_handler);

    /* Parse the command line */
    while ((c = getopt(argc, argv, "hVxs:f:")) != EOF) {
        switch (c) {
        case 'h':             /* Print help message */
            usage("");
	    break;
        case 'V':             /* Be more verbose */
            verbose++;
	    break;
	case 's':             /* The shell program name (default ./tsh) */
	    shellprog = strdup(optarg);
	    break;
	case 'f':             /* Trace file name */
	    tracefile = strdup(optarg);
	    break;
	case 'x':             /* Enable sandboxing */
	    sandboxing = 1;   /* Hidden argument */
	    break;
	default:
            usage("Unrecognized argument");
	}
    }

    if (!tracefile)
	  usage("Missing required argument (-f)");
    
    /* Make sure the requested shell is executable */
    if (stat(shellprog, &statbuf) < 0) {
	fprintf(stderr, "%s: File not found\n", shellprog);
	exit(1);
    }
    if (!(statbuf.st_mode & S_IXUSR)) {
	fprintf(stderr, "%s: File is not executable\n", shellprog);
	exit(1);
    } 

    /* Open the trace file for reading */
    if ((tracefp = fopen(tracefile, "r")) == NULL) {
	fprintf(stderr, "Unable to open trace file %s\n", tracefile);
	exit(1);
    }

    /* Socket pair for data transfers between runtrace and shell */
    if (socketpair(AF_LOCAL, SOCK_DGRAM, 0, datafd) < 0) {
	perror("socketpair datafd");
	exit(1);
    }

    /* Socket pair for synchronization between runtrace and shell jobs */
    if (socketpair(AF_LOCAL, SOCK_DGRAM, 0, syncfd) < 0) {
	perror("socketpair syncfd");
	exit(1);
    }

    /*
     * Create an environment variable that tells shell jobs
     * such as myspin which descriptor to synchronize on.
     */
    sprintf(buf, "SYNCFD=%d", syncfd[1]);
    if (putenv(buf) < 0) {
	perror("putenv");
	exit(1);
    }

    if (verbose) {
	printf("Created environment variable %s\n", buf);
    }


    /************************* 
     * Child code runs a shell
     *************************/ 
    if ((child_pid  = fork()) == 0) {  

	/* Close the descriptor the child is not using */
	close(datafd[0]);

	/* Redirect stdin and stdout to the domain socket */
	dup2(datafd[1], 0);
	dup2(datafd[1], 1);
	
	/* Create the shell command line arguments */
	shellargv[0] = shellprog;
	if (verbose) {
	    shellargv[1] = "-v";
	    shellargv[2] = '\0';
	}
	else {
	    shellargv[1] = '\0';
	}

	/* Modify the environment if sandboxing is enabled */
	if (sandboxing) {
	    strcpy(line, "LD_PRELOAD=/usr/lib/libdl.so ./sandbox.so");
	    putenv(line);
	}

	/* Now go ahead and run the shell */
	if (execve(shellprog, shellargv, environ) < 0) {
	    perror("execve");
	    exit(1);
	}
    }

    /******************************************************** 
     * Parent code sends trace-driven commands to child shell
     *******************************************************/

    /* Close the descriptor the parent is not using */
    close(datafd[1]); 

    /* Read the initial prompt from the shell */
    if (readable(datafd[0], DRIVER_TIMEOUT) == 0) {
	fprintf(stderr, "%s: Runtrace timed out waiting for initial shell prompt\n", tracefile);
        n = n; /* keep gcc happy */
    }     
    else {
	bzero(buf, MAXBUF);
	n = recv(datafd[0], buf, MAXBUF, 0);
	if (strcmp(buf, PROMPT)) {
	    fprintf(stderr, "%s: Runtrace expected initial shell prompt but got '%s' instead.\n", tracefile, buf);
	    exit(1);
	}
    }

    /* 
     * Parent reads trace file and sends commands to the shell 
     */
    while (fgets(line, MAXBUF, tracefp)) {

	/* Delete newline character */
	line[strlen(line)-1] = '\0';

	/* Ignore blank lines */
	if (blankline(line)) { 
	    if (verbose) 
		printf("runtrace: Ignoring blank line\n");
	    continue;
	}

	/* Echo comment lines */ 
	if (line[0] == '#') {
	    printf("%s\n", line);
	    continue;
	}

	/* Parse the command line */
	sscanf(line, "%s", command);
	if (verbose)
	    printf("runtrace: command=%s line=%s\n", command, line);
	
	/* WAIT command */
	if (!strcmp(command, "WAIT")) {
	    if (readable(syncfd[0], DRIVER_TIMEOUT) == 0) {
		printf("%s: Runtrace timed out waiting for sync from job\n", 
		       tracefile);
		exit(1);
	    }
	    else {
		bzero(buf, MAXBUF);
		if ((recv(syncfd[0], buf, MAXBUF, 0)) < 0) {
		    perror("recv syncfd");
		    exit(1);
		}
		if (verbose)
		    printf("runtrace: received sync from job\n");
		continue;
	    }
	}


	/* NEXT command */
	else if (!strcmp(command, "NEXT")) {
	    if (next_prompt() == 0) 
		exit(0);
	    continue;
	}

	/* SIGNAL command */
	else if (!strcmp(command, "SIGNAL")) {
	    bufp = "signal";
	    if ((send(syncfd[0], bufp, strlen(bufp), 0)) < 0) {
		perror("send syncfd");
		exit(1);
	    }
	    if (verbose)
		printf("runtrace: sent sync to shell job\n");
	    continue;
	}

	/* SIGINT command */
	else if (!strcmp(command, "SIGINT")) {
	    if (kill(child_pid, SIGINT) < 0) {
		perror("kill SIGINT");
		exit(1);
	    }
	    if (verbose)
		printf("Runtrace sent SIGINT to process %d\n", child_pid);
	    continue;
	}

	/* SIGTSTP command */
	else if (!strcmp(command, "SIGTSTP")) {
	    if (kill(child_pid, SIGTSTP) < 0) {
		perror("kill SIGTSTP");
		exit(1);
	    }
	    if (verbose)
		printf("Runtrace sent SIGTSTP to process %d\n", child_pid);
	    continue;
	}

	/* Pass the command line on to the shell */
	else {
	    if (verbose) {
		printf("runtrace: Sending '%s' to shell\n", line);
	    }
	    strcat(line, "\n");
	    if ((send(datafd[0], line, strlen(line), 0)) < 0) {
		perror("send datafd[0]");
		exit(1);
	    }
	}

    } /* while loop */

    /* Signal EOF to the shell */
    bufp = "";
    send(datafd[0], bufp, 0, 0);

    /* Wait for the shell to terminate */
    alarm(DRIVER_TIMEOUT);
    state = "waiting for shell to terminate";
    waitpid(child_pid, NULL, 0);

    /* Kill any of our stray shells and jobs */
    clean();
    exit(0);
}


/*
 * clean - clean up any stray jobs or shells 
 */
void clean() {
    system("/bin/kill -9 tsh tshref mytstpp mytstps mycat myenv myintp myints myspin1 myspin2 mysplit > /dev/null 2>&1");
}

/*
 * usage - Print help message and terminate
 */
void usage(char *msg)
{
    printf("%s\n", msg);
    printf("Usage: runtrace -f <file> -s <shellprog> [-hV]\n");
    printf("Options:\n");
    printf("  -h            Print this message\n");
    printf("  -s <shell>    Shell program to test (default ./tsh)\n");
    printf("  -f <file>     Trace file\n");
    printf("  -V            Be more verbose\n");

    exit(0);
}

/*
 * blankline - Return true if str is a blank line
 */
int blankline(char *str)
{
    while (*str) {
	if (!isspace(*str++)) {
	    return 0;
	}
    }
    return 1;
}

	
/*
 * print_child_status - Print the exit/termination status of the shell after a timeout
 */
void print_child_status()
{
    pid_t pid; 
    int status;

    pid = waitpid(-1, &status, WNOHANG);

    if (pid > 0) {
	if (WIFEXITED(status)) {
	    printf("Child shell terminated normally with status %d\n", WEXITSTATUS(status));
	    fflush(stdout);
	    return;
	}
	
	if (WIFSIGNALED(status)) { 
	    printf("Child shell terminated by signal %d\n", WTERMSIG(status));
	    fflush(stdout);
	    return;
	}
	
	if (WIFSTOPPED(status)) {
	    printf("Child shell stopped by signal %d\n", WSTOPSIG(status));
	    fflush(stdout);
	    return;
	}
    }
    else if (pid == 0) {
	printf("Child shell still running.\n");
	fflush(stdout);
	return;
    }
    else if (pid < 0 && errno == ECHILD) {
	printf("Child shell appears to have never run\n");
	fflush(stdout);
	return;
    }
    else {
	printf("Unknown child status\n");
	fflush(stdout);
	return;
    }
}

/*
 * next_prompt - Print the shell response until the next prompt or EOF
 *               Returns 1 if OK, 0 on EOF or timeout
 */
int next_prompt(void)
{
    int n;
    
    bzero(buf, MAXBUF);
    if (readable(datafd[0], DRIVER_TIMEOUT) == 0) {
	printf("%s: Runtrace timed out waiting for next shell prompt\n", 
	       tracefile);
	print_child_status();
	return 0;
    }
    else {
	if ((n = recv(datafd[0], buf, MAXBUF, 0)) < 0) {
	    perror("next_prompt:recv1");
	    exit(1);
	}
	else if (n == 0) { /* EOF */
	    return 0;
	} 
    }

    while(strcmp(buf, PROMPT)) {
	printf("%s", buf);

	bzero(buf, MAXBUF);
	if (readable(datafd[0], DRIVER_TIMEOUT) == 0) {
	    printf("%s: Runtrace timed out waiting for next shell prompt\n", 
		   tracefile);
	    print_child_status();
	    return 0;
	}
	else {
	    if ((n = recv(datafd[0], buf, MAXBUF, 0)) < 0) {
		perror("next_prompt:recv1");
		exit(1);
	    }
	    else if (n == 0) { /* EOF */
		return 0;
	    } 
	}
    }
    return 1;
}

/*
 * readable - Wait secs seconds for descriptor fd to become readable
 *            Return > 0 if fd is readable, 0 if timeout.
 */
int readable(int fd, int secs) 
{
    int n;

    fd_set rset;
    struct timeval tv;

    FD_ZERO(&rset);
    FD_SET(fd, &rset);

    tv.tv_sec = secs;
    tv.tv_usec = 0;
    
    if ((n = select(fd+1, &rset, NULL, NULL, &tv)) < 0) {
	perror("select");
	exit(1);
    }

    return n;
}
