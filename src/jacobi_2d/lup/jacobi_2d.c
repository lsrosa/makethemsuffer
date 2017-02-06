void jacobi_2d(
  float * A,
  int n
){
  int i, j, t;

  for (t = 0; t < n; t++){
    for (i = 1; i < n - 1; i++){
      for (j = 1; j < n - 1; j++){
        A[i*n+j] = 0.2 * (A[i*n+j] + A[i*n+j-1] + A[i*n+1+j] + A[(1+i)*n+j] + A[(i-1)*n+j]);
      }
    }
  }

  return;
}

int main(){
  int i, j, n = 100;
	float A[n][n], sum;

	for (i = 0; i < n; i++){
    for (j = 0; j < n; j++){
				A[i][j] = ( i*(j+2) + 2) / n;
    }
	}

  jacobi_2d((float *)A, n);

  sum = 0;
  for (i = 0; i < n; i++){
    for (j = 0; j < n; j++){
        sum += A[i][j];
        //printf("%f ", A[i][j]);
    }
  }

  return (int)sum;
}
