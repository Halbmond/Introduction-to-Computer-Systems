/* 
 * tracegen.c - Running the binary tracegen produces
 * a memory trace of all of the registered transpose functions. 
 *
 * The tracing functionality will only record memory accesses from
 * the registered transpose functions; however, if multiple functions
 * are invoked during a single execution, the trace will contain
 * all of the accesses together.
 */

#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <unistd.h>
#include <getopt.h>
#include "cachelab.h"
#include <string.h>

/* External variables declared in cachelab.c */
extern trans_func_t func_list[MAX_TRANS_FUNCS];
extern int func_counter; 

/* External function from trans.c */
extern void registerFunctions();

/* Enable / disable tracing */
extern void __roi_begin();
extern void __roi_end();

static int A[256][256];
static int B[256][256];
static int M;
static int N;


int validate(int fn,int M, int N, int A[N][M], int B[M][N]) {
    int C[M][N];
    memset(C,0,sizeof(C));
    correctTrans(M,N,A,C);
    for(int i=0;i<M;i++) {
        for(int j=0;j<N;j++) {
            if(B[i][j]!=C[i][j]) {
                printf("Validation failed on function %d! Expected %d but got %d at B[%d][%d]\n",fn,C[i][j],B[i][j],i,j);
                return 0;
            }
        }
    }
    return 1;
}

int entry(int argc, char* argv[]){
    int i;

    char c;
    int selectedFunc=-1;
    while( (c=getopt(argc,argv,"M:N:F:")) != -1){
        switch(c){
        case 'M':
            M = atoi(optarg);
            break;
        case 'N':
            N = atoi(optarg);
            break;
        case 'F':
            selectedFunc = atoi(optarg);
            break;
        case '?':
        default:
            printf("./tracegen failed to parse its options.\n");
            exit(1);
        }
    }
    assert((M > 0) && (M <= 256));
    assert((N > 0) && (N <= 256));

    /*  Register transpose functions */
    registerFunctions();

    /* Fill A with data */
    initMatrix(M,N, A, B);

    if (-1==selectedFunc) {
        /* Invoke registered transpose functions */
        for (i=0; i < func_counter; i++) {
            __roi_begin();
            (*func_list[i].func_ptr)(M, N, A, B);
            __roi_end();
            if (!validate(i,M,N,A,B))
                return i+1;
        }
    } else {
        __roi_begin();
        (*func_list[selectedFunc].func_ptr)(M, N, A, B);
        __roi_end();
        if (!validate(selectedFunc,M,N,A,B))
            return selectedFunc+1;

    }
    return 0;
}


