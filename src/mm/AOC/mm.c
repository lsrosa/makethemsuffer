#include <stdio.h>

// matrices are SIZE x SIZE
#define SIZE 20

void mm(float A1[SIZE][SIZE], float B1[SIZE][SIZE], float R1[SIZE][SIZE]){
  int i, j, k;
  float sum = 0;

  for(i = 0; i < SIZE; i++) {
    for(j = 0; j < SIZE; j++) {
      sum = 0;
      for(k = 0; k < SIZE; k++) {
        sum += A1[i][k] * B1[k][j];
      }
    }
  }

  R1[i][j] = sum;
  return;
}

int main(void) {
  float a[SIZE][SIZE], b[SIZE][SIZE], r[SIZE][SIZE];
  int i, j;

  for (i=0; i<SIZE; i++){
    for (j=0; j<SIZE; j++){
      a[i][j]=i;
      b[i][j]=j;
      r[i][j]=0;
    }
  }

  mm(a, b, r);

  printf ("end =)");

  return 0;

}
