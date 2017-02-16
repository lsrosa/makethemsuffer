#define size 100

int main(){
  int i, j, LB=1, UB=50;
  int A[size*size];
  int s = size;
  int m=2, n=5;

  for (i = LB; i < UB; i++) {
    for (j = LB; j < n; j++) {
      A[i*s+j] = A[(i-1)*s+j+m];
    }
  }

  return A[i*s+j];
}
