#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#   define N 50
#   define M 50

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
void kernel_correlation(int m, int n, float float_n, float  data[M][N], float  symmat[M][M], float  mean[M], float stddev[M]){
  int i, j, j1, j2;

  float eps = 0.1f;

  for (j = 0; j < M; j++)
    {
      mean[j] = 0.0;
      for (i = 0; i < N; i++)
				mean[j] += data[i][j];
      mean[j] /= float_n;
    }

  /* Determine standard deviations of column vectors of data matrix. */
  for (j = 0; j < M; j++)
    {
      stddev[j] = 0.0;
      for (i = 0; i < N; i++)
				stddev[j] += (data[i][j] - mean[j]) * (data[i][j] - mean[j]);
      stddev[j] /= float_n;
      stddev[j] = sqrt(stddev[j]);
      /* The following in an inelegant but usual way to handle
	 near-zero std. dev. values, which below would cause a zero-
	 divide. */
      stddev[j] = stddev[j] <= eps ? 1.0 : stddev[j];
    }

  /* Center and reduce the column vectors. */
  for (i = 0; i < N; i++){
    for (j = 0; j < M; j++){
			data[i][j] -= mean[j];
			data[i][j] /= sqrt(float_n) * stddev[j];
    }
  }

  /* Calculate the m * m correlation matrix. */
  for (j1 = 0; j1 < M-1; j1++){
      symmat[j1][j1] = 1.0;
      for (j2 = j1+1; j2 < M; j2++){
	  		symmat[j1][j2] = 0.0;
	  		for (i = 0; i < N; i++)
	    		symmat[j1][j2] += (data[i][j1] * data[i][j2]);

				symmat[j2][j1] = symmat[j1][j2];
			}
  }

	symmat[M-1][M-1] = 1.0;

}

int main(int argc, char** argv){
  /* Retrieve problem size. */
  int n = N;
  int m = M;
	int i, j, k;

	float float_n = 1.2;

	float data[M][N],symmat[M][M],mean[M],stddev[M];
  float sum;

	for (i = 0; i < m; i++){
		for (j = 0; j < n; j++){
			data[i][j] = ((float) i+37*j) / M;
		}
	}

  /* Run kernel. */
  kernel_correlation (m, n, float_n, data, symmat, mean, stddev);

  sum = 0;
 	for (i = 0; i < m; i++){
    for (j = 0; j < m; j++) {
      sum += symmat[i][j];
				printf ("%f ", symmat[i][j]);
    }
	}

  return (int)sum;
}