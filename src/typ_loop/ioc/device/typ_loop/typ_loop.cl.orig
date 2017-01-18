void typ_loop(
  __global int * restrict A,
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
    }
  }
  return;
}
