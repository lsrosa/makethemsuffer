#include <stdio.h>

int main(){
  int i, j, t, n = 100;
	float A[n][n], sum;

	for (i = 0; i < n; i++){
    for (j = 0; j < n; j++){
				A[i][j] = ( i*(j+2) + 2) / n;
    }
	}

	for (t = 0; t < n; t++){
			for (i = 1; i < n - 1; i++)
				for (j = 1; j < n - 1; j++)
					A[i][j] = 0.2 * (A[i][j] + A[i][j-1] + A[i][1+j] + A[1+i][j] + A[i-1][j]);

	}

  sum = 0;
  for (i = 0; i < n; i++){
    for (j = 0; j < n; j++){
        sum += A[i][j];
        printf("%f ", A[i][j]);
    }
  }

  return (int)sum;
}
