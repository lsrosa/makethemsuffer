#include <stdio.h>
#include <stdlib.h>

#define size 100

int main(){
  int i, j, LB=1, UB=50;
  int A[size][size];
  int sum;

  for (i = 0; i < size; i++) {
    for (j = 0; j < size; j++) {
      A[i][j] = (i*size+j);
    }
  }

  //int m = (rand() % 20) - 10;
  //int n = (rand() % 30) - 15;

  int m=2, n=5;
  
  for (i = LB; i < UB; i++) {
    for (j = LB; j < n; j++) {
      A[i][j] = A[i-1][j+m];
    }
  }

  sum = 0;
  for (i = 0; i < size; i++) {
    for (j = 0; j < size; j++) {
      sum += A[i][j];
      printf("%d  ", A[i][j]);
    }
  }

  return (int)sum;
}
