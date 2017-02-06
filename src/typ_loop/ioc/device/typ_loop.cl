void typ_loop(
  __global float * A,
  __global float * B,
  int s,
  int LB,
  int UB,
  int m,
  int n
){
  int i, j;

  for (i = LB; i < UB; i++) {
    for (j = LB; j < n; j++) {
      A[i*s+j] = A[(i-1)*s+j+m];
      B[i*s+j] = A[i*s+j]*UB/m+LB*n;
    }
  }
  for (i = 0; i < s; i++) {
    for (j = 0; j < s; j++) {
      B[i*s+j] = B[i*s+j]*UB/A[i*s+j];
    }
  }

  return;
}
