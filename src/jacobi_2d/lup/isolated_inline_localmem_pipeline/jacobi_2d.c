int main(){
  int i, j, n = 100, t;
	float A[n*n], sum;

  l3: for (t = 0; t < n; t++){
    l2: for (i = 1; i < n - 1; i++){
      l1: for (j = 1; j < n - 1; j++){
        A[i*n+j] = 0.2 * (A[i*n+j] + A[i*n+j-1] + A[i*n+1+j] + A[(1+i)*n+j] + A[(i-1)*n+j]);
      }
    }
  }


  return A[i*n+j];
}