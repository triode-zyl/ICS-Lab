//周炎亮
//2018202196
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

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    /*int i,j,k,a,b,tmp[8];
    if(M==32&&N==32)
    {
        for(i=0;i<32;i++)
        {
            for(j=0;j<32;j+=8)
            {
                for(k=j;k<j+8;k++)
                    tmp[k-j]=A[i][k];
                for(k=j;k<j+8;k++)
                    B[k][i]=tmp[k-j];
            }
        }
    }*/
    int i,j,a,b,tmp[8];
    if(M==32&&N==32)
    {
        for(i=0;i<32;i+=8)
        {
            for(j=0;j<32;j+=8)
            {
                for(a=i;a<i+8;a++)
                {
                    if(i==j)
                    {
                        for(b=j;b<j+8;b++)
                            tmp[b-j]=A[a][b];
                        for(b=j;b<j+8;b++)
                            B[b][a]=tmp[b-j];
                    }
                    else
                    {
                        for(b=j;b<j+8;b++)
                            B[b][a]=A[a][b];
                    }
                }
            }
        }
    }
    if(M==64&&N==64)
    {
    for(i=0;i<N;i+=8)
    {
        for(j=0;j<M;j+=8)
        {
            for(a=i;a<i+4;a++)
            {
                for(b=j;b<j+8;b++)
                    tmp[b-j]=A[a][b];
                for(b=j;b<j+4;b++)
                {
                    B[b][a]=tmp[b-j];
                    B[b][a+4]=tmp[b+4-j];
                }
            }
            for(b=j;b<j+4;b++)
            {
                for(a=i;a<i+4;a++)
                //{
                    tmp[a-i]=A[a+4][b];
                for(a=i;a<i+4;a++)
                    tmp[a+4-i]=B[b][a+4];
                //}
                for(a=i;a<i+4;a++)
                    B[b][a+4]=tmp[a-i];
                for(a=i;a<i+4;a++)
                    B[b+4][a]=tmp[a+4-i];
            }
            for(a=i+4;a<i+8;a++)                        
            {
                for(b=j+4;b<j+8;b++)
                //{
                    tmp[b-j]=A[a][b];
                for(b=j+4;b<j+8;b++)
                    B[b][a]=tmp[b-j];
                //}
            }
        }
    }
    }
    if(M==67&&N==61)
    {
    for(i=0;i<N;i+=18)
    {
        for(j=0;j<M;j+=18)
        {
            for(a=i;a<N&&a<i+18;a++)
            {
                for(b=j;b<M&&b<j+18;b++)
                    B[b][a]=A[a][b];
            }
        }
    }
    }
    if(M==61&&N==67)
    {
    for(i=0;i<N;i+=18)
    {
        for(j=0;j<M;j+=18)
        {
            for(a=i;a<N&&a<i+18;a++)
            {
                for(b=j;b<M&&b<j+18;b++)
                    B[b][a]=A[a][b];
            }
        }
    }
    }
}

char test_64_64[]="test 64*64";
void test_64(int M, int N, int A[N][M], int B[M][N])
{
    int i,j,a,b,tmp[8];
    for(i=0;i<N;i+=8)
    {
        for(j=0;j<M;j+=8)
        {
            for(a=i;a<i+4;a++)
            {
                for(b=j;b<j+8;b++)
                    tmp[b-j]=A[a][b];
                for(b=j;b<j+4;b++)
                {
                    B[b][a]=tmp[b-j];
                    B[b][a+4]=tmp[b+4-j];
                }
            }
            for(b=j;b<j+4;b++)
            {
                for(a=i;a<i+4;a++)
                //{
                    tmp[a-i]=A[a+4][b];
                for(a=i;a<i+4;a++)
                    tmp[a+4-i]=B[b][a+4];
                //}
                for(a=i;a<i+4;a++)
                    B[b][a+4]=tmp[a-i];
                for(a=i;a<i+4;a++)
                    B[b+4][a]=tmp[a+4-i];
            }
            for(a=i+4;a<i+8;a++)                        
            {
                for(b=j+4;b<j+8;b++)
                //{
                    tmp[b-j]=A[a][b];
                for(b=j+4;b<j+8;b++)
                    B[b][a]=tmp[b-j];
                //}
            }
        }
    }
}

char test_61_67[]="test 61*67";
void test_61_0(int M, int N, int A[N][M], int B[M][N])
{
    int i,j,a,b;
    for(i=0;i<N;i+=8)
    {
        for(j=0;j<M;j+=8)
        {
            for(a=i;a<N&&a<i+8;a++)
            {
                for(b=j;b<M&&b<j+8;b++)
                    B[b][a]=A[a][b];
            }
        }
    }
}
void test_61_1(int M, int N, int A[N][M], int B[M][N])
{
    int i,j,a,b;
    for(i=0;i<N;i+=4)
    {
        for(j=0;j<M;j+=4)
        {
            for(a=i;a<N&&a<i+4;a++)
            {
                for(b=j;b<M&&b<j+4;b++)
                    B[b][a]=A[a][b];
            }
        }
    }
}
void test_61_2(int M, int N, int A[N][M], int B[M][N])
{
    int i,j,a,b;
    for(i=0;i<N;i+=18)
    {
        for(j=0;j<M;j+=18)
        {
            for(a=i;a<N&&a<i+18;a++)
            {
                for(b=j;b<M&&b<j+18;b++)
                    B[b][a]=A[a][b];
            }
        }
    }
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

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    

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
    //registerTransFunction(test_61, test_61_67); 
    //registerTransFunction(test_61_1, test_61_67); 
    /* Register any additional transpose functions */
    //registerTransFunction(trans, trans_desc); 

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

