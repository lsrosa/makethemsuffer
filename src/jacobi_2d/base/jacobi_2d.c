#include <stdio.h>

int main(){
  int i, j, t, n = 100;
	float A[n][n], B[n][n];

	for (i = 0; i < n; i++){
    for (j = 0; j < n; j++){
				A[i][j] = ( i*(j+2) + 2) / n;
				B[i][j] = ( i*(j+3) + 3) / n;
    }
	}

	for (t = 0; t < n; t++){
			for (i = 1; i < n - 1; i++)
				for (j = 1; j < n - 1; j++)
					B[i][j] = 0.2 * (A[i][j] + A[i][j-1] + A[i][1+j] + A[1+i][j] + A[i-1][j]);

			for (i = 1; i < n-1; i++)
				for (j = 1; j < n-1; j++)
					A[i][j] = B[i][j];
	}

	printf("aaaaa %f\n", A[23][43]);
  return 0;
}
