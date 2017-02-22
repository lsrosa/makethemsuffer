#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

#   define N 50
#   define M 50

void kernel_covariance(int m, int n, float float_n, float data[M][N], float symmat[M][M], float mean[M]){
  int i, j, j1, j2;

  /* Determine mean of column vectors of input data matrix */
  for (j = 0; j < M; j++)
    {
      mean[j] = 0.0;
      for (i = 0; i < N; i++)
        mean[j] += data[i][j];
      mean[j] /= float_n;
    }

  /* Center the column vectors. */
  for (i = 0; i < N; i++)
    for (j = 0; j < M; j++)
      data[i][j] -= mean[j];

  /* Calculate the m * m covariance matrix. */
  for (j1 = 0; j1 < M; j1++)
    for (j2 = j1; j2 < M; j2++){
        symmat[j1][j2] = 0.0;

				for (i = 0; i < N; i++)
	  			symmat[j1][j2] += data[i][j1] * data[i][j2];

				symmat[j2][j1] = symmat[j1][j2];
      }
}


int main(int argc, char** argv)
{
  /* Retrieve problem size. */
  int n = N;
  int m = M;
	int i, j;
  float sum;

  /* Variable declaration/allocation. */
	float float_n = 1.2;
	float data[M][N];
	float symmat[M][M];
	float mean[M];

	for (i = 0; i < M; i++){
		for (j = 0; j < N; j++){
			data[i][j] = ((float) i*j) / M;
		}
	}

  /* Run kernel. */
  kernel_covariance (m, n, float_n, data, symmat, mean);

  sum = 0;
	for (i = 0; i < m; i++){
		for (j = 0; j < m; j++) {
      sum += symmat[i][j];
			printf  ("%f ", symmat[i][j]);
		}
  }

  return (int)sum;
}