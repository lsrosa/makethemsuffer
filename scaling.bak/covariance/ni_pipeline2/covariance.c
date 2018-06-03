#   define N 50
#   define M 50
#define UNR 2
int main(int argc, char** argv)
{
  /* Retrieve problem size. */
  int n = N;
  int m = M;
	int i, j, j1, j2;
  float sum;

  /* Variable declaration/allocation. */
	float float_n = 1.2;
	float data[M*N];
	float symmat[M*M];
	float mean[M];

  /* Determine mean of column vectors of input data matrix */
  for (j = 0; j < m; j++){
      mean[j] = 0.0;
      loop3:
      #pragma unroll UNR
      for (i = 0; i < n; i++){
        mean[j] += data[i*n+j];
      }
      mean[j] /= float_n;
    }

  /* Center the column vectors. */
  for (i = 0; i < n; i++)
    loop2:
    #pragma unroll UNR
    for (j = 0; j < m; j++){
      data[i*n+j] -= mean[j];
    }

  /* Calculate the m * m covariance matrix. */
  for (j1 = 0; j1 < m; j1++){
    for (j2 = j1; j2 < m; j2++){
        symmat[j1*m+j2] = 0.0;

				loop1:
        #pragma unroll UNR
        for (i = 0; i < N; i++){
          symmat[j1*m+j2] += data[i*n+j1] * data[i*n+j2];
        }

				symmat[j2*m+j1] = symmat[j1*m+j2];
    }
  }
  return symmat[j2*m+j1];
}
