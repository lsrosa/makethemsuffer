extern void __legup_label(char* label);
#define size 100

int main(){
  int i, j, LB=1, UB=50;
  int A[size*size];
  int s = size;
  int m=2, n=5;

  for (i = LB; i < UB; i++) {
    loop1: for (j = LB; j < n; j++) {
__legup_label("loop1");
      A[i*s+j] = A[(i-1)*s+j+m];
    }
  }

  return A[i*s+j];
}
