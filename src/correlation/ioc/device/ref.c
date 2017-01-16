#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#   define N 500
#   define M 500

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
void kernel_correlation(
  int m,
  int n,
  float float_n,
  float * data,//[M][N],
  float * symmat,//[M][M],
  float * mean,//[M],
  float * stddev//[M]
){
  int i, j, j1, j2;

  float eps = 0.1f;

  for (j = 0; j < m; j++)
    {
      mean[j] = 0.0;
      for (i = 0; i < n; i++)
				mean[j] += data[i*n+j];
      mean[j] /= float_n;
    }

  /* Determine standard deviations of column vectors of data matrix. */
  for (j = 0; j < m; j++)
    {
      stddev[j] = 0.0;
      for (i = 0; i < n; i++)
				stddev[j] += (data[i*n+j] - mean[j]) * (data[i*n+j] - mean[j]);
      stddev[j] /= float_n;
      stddev[j] = sqrt(stddev[j]);
      /* The following in an inelegant but usual way to handle
	 near-zero std. dev. values, which below would cause a zero-
	 divide. */
      stddev[j] = stddev[j] <= eps ? 1.0 : stddev[j];
    }

  /* Center and reduce the column vectors. */
  for (i = 0; i < n; i++){
    for (j = 0; j < m; j++){
			data[i*n+j] -= mean[j];
			data[i*n+j] /= sqrt(float_n) * stddev[j];
    }
  }

  /* Calculate the m * m correlation matrix. */
  for (j1 = 0; j1 < m-1; j1++){
      symmat[j1*m+j1] = 1.0;
      for (j2 = j1+1; j2 < m; j2++){
	  		symmat[j1*m+j2] = 0.0;
	  		for (i = 0; i < n; i++)
	    		symmat[j1*m+j2] += (data[i*n+j1] * data[i*n+j2]);

				symmat[j2*m+j1] = symmat[j1*m+j2];
			}
  }

	symmat[(m-1)*m+m-1] = 1.0;

}

int main(int argc, char** argv){
  /* Retrieve problem size. */
  int n = N;
  int m = M;
	int i, j, k;

	float float_n = 1.2;

	float data[M][N],symmat[M][M],mean[M],stddev[M];

	for (i = 0; i < m; i++){
		for (j = 0; j < n; j++){
			data[i][j] = ((float) i+37*j) / M;
		}
	}

  /* Run kernel. */
  kernel_correlation (m, n, float_n,(float *) data,(float *) symmat,(float *) (float *) mean, (float *) stddev);

 	for (i = 0; i < m; i++){
    for (j = 0; j < m; j++) {
      if ((i * m + j) % m*10 == 0){
				printf ("%f ", symmat[i][j]);
			}
    }
	}

  return 0;
}
