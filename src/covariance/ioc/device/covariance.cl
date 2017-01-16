__kernel void kernel_covariance(
  int m,
  int n,
  float float_n,
  __global float * restrict data,//[M][N],
  __global float * restrict symmat,//[M][M],
  __global float * restrict mean//[M]
){
  int i, j, j1, j2;

  /* Determine mean of column vectors of input data matrix */
  for (j = 0; j < m; j++)
    {
      mean[j] = 0.0;
      for (i = 0; i < n; i++)
        mean[j] += data[i*n+j];
      mean[j] /= float_n;
    }

  /* Center the column vectors. */
  for (i = 0; i < n; i++)
    for (j = 0; j < m; j++)
      data[i*n+j] -= mean[j];

  /* Calculate the m * m covariance matrix. */
  for (j1 = 0; j1 < m; j1++)
    for (j2 = j1; j2 < m; j2++){
        symmat[j1*m+j2] = 0.0;

				for (i = 0; i < n; i++)
	  			symmat[j1*m+j2] += data[i*n+j1] * data[i*n+j2];

				symmat[j2*m+j1] = symmat[j1*m+j2];
      }
}
