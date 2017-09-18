/*
 *
 *              
 *		  cachelab	Part B
 *
 *		Optimizing Matrix Transpose
 *
 *			  Name	: Yicheng Lee
 *			userID	: 1500012786@pku.edu.cn
 * 
 */

/*
 *
 *	The core idea : Using Blocking to Increase Temporal Locality.
 *
 *	Blocking a matrix multiply routine works by partitioning the matrices into submatrices and then exploiting
 *	the mathematical fact that these submatrices can be manipulated just like scalars
 *
 *	My block size of 3 different subproblems :
 *
 *		Matrix		Block size
 *		32 * 32		8 * 8
 *		64 * 64		8 * 8
 *		61 * 67		17 * 17
 *
 *
 *
 *
 *	References : http://csapp.cs.cmu.edu/3e/waside/waside-blocking.pdf
 *
 */
/* 
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */ 
#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
	REQUIRES(M > 0);
	REQUIRES(N > 0);
	int Row, Col, k, l, r0, r1, r2, r3, r4, r5, r6, r7;

	if (M == 64 && N == 64) {
		/*
			size of each block : 8 * 8
		*/
		
		for (Col = 0; Col < 64; Col += 8)
		{
			r7 = 64; // optimization level (use it to debug)
			if (Col < r7)
			{
				for (k = 0; k < 4; ++k)
				for (l = 0; l < 8; ++l)
				{
					r0 = 0;
					r1 = (Col + 8);
					if (r1 >= N) // store at the adjacent 8*8 block to avoid evictions
					{
						r0 = 4;
						r1 = 8;
					}
					B[r0 + k][r1 + l] = A[Col + k][Col + l];
				}

				for (k = 0; k < 4; ++k)
				for (l = 0; l < 8; ++l)
				{
					r0 = 0;
					r1 = Col + 16;
					if (r1 >= N) // store at the adjacent 8*8 block to avoid evictions
					{
						r0 = 4;
						r1 = 16;
					}
					B[r0 + k][r1 + l] = A[Col + k + 4][Col + l];
				}
				
				for (k = 0; k < 4; ++k)
				for (l = 0; l < 4; ++l)
				{
					r0 = 0;
					r1 = (Col + 8);
					if (r1 >= N) // store at the adjacent 8*8 block to avoid evictions
					{
						r0 = 4;
						r1 = 8;
					}
					B[Col + l][Col + k] = B[r0 + k][r1 + l];
				}

				for (k = 0; k < 4; ++k)
				for (l = 0; l < 4; ++l)
				{
					r0 = 0;
					r1 = (Col + 16);
					if (r1 >= N) // store at the adjacent 8*8 block to avoid evictions
					{
						r0 = 4;
						r1 = 16;
					}
					B[Col + l][Col + k + 4] = B[r0 + k][r1 + l];
				}

				for (k = 0; k < 4; ++k)
				for (l = 4; l < 8; ++l)
				{
					r0 = 0;
					r1 = (Col + 8);
					if (r1 >= N) // store at the adjacent 8*8 block to avoid evictions
					{
						r0 = 4;
						r1 = 8;
					}
					B[Col + l][Col + k] = B[r0 + k][r1 + l];
				}

				for (k = 0; k < 4; ++k)
				for (l = 4; l < 8; ++l)
				{
					r0 = 0;
					r1 = (Col + 16);
					if (r1 >= N) // store at the adjacent 8*8 block to avoid evictions
					{
						r0 = 4;
						r1 = 16;
					}
					B[Col + l][Col + k + 4] = B[r0 + k][r1 + l];
				}

			}
			else // non-optimization
			{
				for(int k=0;k<8;++k)
					for(int l=0;l<8;++l)
						B[Col + l][Col + k] = A[Col + k][Col + l];
			}
		}
		for (Row = 0; Row < N; Row += 8)
		for (Col = 0; Col < M; Col += 8)
		{
			//for (Row = 0; Row < N; Row += 8)
			{
				if (Row != Col)
				{
					/*
						store a[0~1][4~7] to destination (directly).
					*/
					for (k = Col; k < Col + 4; k++)
					for (l = Row; l < Row + 2; l++)	B[k][l] = A[l][k];
					
					/*
						store a[0~1][4~7] to register (temporarily).
						store a[2~3][4~7] to b (temporarily).
					*/
					r0 = A[Row + 0][Col + 4];	r4 = A[Row + 1][Col + 4];
					r1 = A[Row + 0][Col + 5];	r5 = A[Row + 1][Col + 5];
					r2 = A[Row + 0][Col + 6];	r6 = A[Row + 1][Col + 6];
					r3 = A[Row + 0][Col + 7];	r7 = A[Row + 1][Col + 7];
					
					for (k = Col + 0; k < Col + 4 && k < M; k++)
					for (l = Row + 2; l < Row + 4 && l < N; l++) 	B[k][l] = A[l][k];

					for (k = Col + 4; k < Col + 8 && k < M; k++)
					for (l = Row + 2; l < Row + 4 && l < N; l++) 	B[l - Row + Col][k - Col + Row] = A[l][k];
					
					for (l = Row + 4; l < Row + 8 && l < N; l++)
					for (k = Col + 0; k < Col + 2 && k < M; k++)		B[k][l] = A[l][k];
					/*
						complete the transfer of a[4..7][]
					*/

					for (l = Row + 2; l < Row + 4 && l < N; l++)
					for (k = Col + 4; k < Col + 6 && k < M; k++)	B[k][l] = B[l - Row + Col][k - Col + Row];
					
					B[Col + 4][Row + 0] = r0;	r0 = B[Col + 2][Row + 6];
					B[Col + 5][Row + 0] = r1;	r1 = B[Col + 2][Row + 7];
					B[Col + 4][Row + 1] = r4;	r4 = B[Col + 3][Row + 6];
					B[Col + 5][Row + 1] = r5;	r5 = B[Col + 3][Row + 7];
					
					for (l = Row + 4; l < Row + 8 && l < N; l++)
					for (k = Col + 2; k < Col + 4 && k < M; k++)	B[k][l] = A[l][k];
					
					B[Col + 6][Row + 0] = r2;	B[Col + 7][Row + 0] = r3;
					B[Col + 6][Row + 1] = r6;	B[Col + 7][Row + 1] = r7;
					B[Col + 6][Row + 2] = r0;	B[Col + 7][Row + 2] = r1;
					B[Col + 6][Row + 3] = r4;	B[Col + 7][Row + 3] = r5;
					
					/*
						deal with the rest 16 elements. (hit).
					*/
					for (k = Col + 4; k < Col + 6 && k < M; k++)
					for (l = Row + 4; l < Row + 6 && l < N; l++)
					{
						B[k + 2][l + 0] = A[l + 0][k + 2];
						B[k + 0][l + 0] = A[l + 0][k + 0];
						B[k + 2][l + 2] = A[l + 2][k + 2];
						B[k + 0][l + 2] = A[l + 2][k + 0];
					}
					/*
						complete the transfer of a[4..7][]
					*/
				}
			}
		}
	}
	else
	{
		if (M == 32 && N == 32) r7 = 8;
		if (M == 61 && N == 67) r7 = 17;
		/*
			size of each block : r7 * r7
		*/
		for (Row = 0; Row < M; Row += r7)
		{
			for (Col = 0; Col < N; Col += r7)
			{
				if (Col != Row) // if Col != Row, it's not possible to evict.
				{
					for (l = Col; l < Col + r7; ++l)
					{
						if (l >= N)
							break;

						for (k = Row; k < Row + r7; ++k)
						{
							if (k >= M)
								break;

							B[k][l] = A[l][k];
						}
					}
				}
				else
				{
					for (l = Col; l < Col + r7; ++l)
					{
						if (l >= N)
							break;

						for (k = Row; k < l; ++k)
						{
							if (k >= M)
								break;
								B[k][l] = A[l][k];
						}

						r1 = A[l][l]; // save A(l,l) to avoid evictions

						for (k = l + 1; k < Row + r7; ++k)
						{
							if (k >= M)
								break;

								B[k][l] = A[l][k];
						}
						
						B[l][l] = r1;
						
					}
				}
	 		}
		}
	}
    	ENSURES(is_transpose(M, N, A, B));
}

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc); 

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

