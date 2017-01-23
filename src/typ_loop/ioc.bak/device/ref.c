#include <stdio.h>
#include <stdlib.h>

#define size 100

void typ_loop(int * A, int s, int LB, int UB,int m, int n){

  int i, j;

  for (i = LB; i < UB; i++) {
    for (j = LB; j < n; j++) {
      A[i*s+j] = A[(i-1)*s+j+m];
    }
  }
  return;
}

int main(){
  int i, j, LB=1, UB=50;
  int A[size][size];

  for (i = 0; i < size; i++) {
    for (j = 0; j < size; j++) {
      A[i][j] = (i*size+j);
    }
  }

  int m = (rand() % 20) - 10;
  int n = (rand() % 30) - 15;

  typ_loop((int *)A, size, LB, UB, m, n);

  for (i = 0; i < size; i++) {
    for (j = 0; j < size; j++) {
      printf("%d  ", A[i][j]);
    }
  }

  return 0;
}
