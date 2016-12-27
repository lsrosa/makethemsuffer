#include <stdio.h>
#include <stdlib.h>

#define size 100

int main(){
  int i, j, LB=1, UB=50;
  int A[size][size];

  int m = (rand() % 20) - 10;
  int n = (rand() % 30) - 15;

  for (i = LB; i < UB; i++) {
    for (size_t j = LB; j < n; j++) {
      A[i][j] = A[i-1][j+m];
    }
  }

  printf("aaaa %d \n", m);
  return 0;
}
