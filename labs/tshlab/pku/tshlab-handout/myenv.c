/* 
 * myenv.c - Shell test program
 * 
 * Determines if the student shell sets the environment propoerly when
 * it runs jobs.  
 */

#include <stdio.h>
#include <stdlib.h>

int main() 
{
    printf("OSTYPE=%s\n", getenv("OSTYPE"));
    fflush(stdout);
    exit(0);
}


