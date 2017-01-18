#include <stdio.h>

int main(){
  int row, col;
  int rows = 100, cols = 100;

  float buff_A[rows][cols], buff_B[rows][cols], temp;

  for (row = 0; row < rows; row++) {
    for (col = 0; col < cols; col++) {
      buff_A[row][col] = (2+row)*(col+1);
      buff_B[row][col] = (2+row)*(2*col+1);
    }
  }

  for (row = 0; row < rows; row++) {
    for (col = 0; col < cols; col++) {
      if (col < cols) {
        buff_A[2][col] = buff_A[1][col]; // read from buff_A[1][col]
        buff_A[1][col] = buff_A[0][col]; // write to buff_A[1][col]
        buff_B[1][col] = buff_B[0][col];
        temp = buff_A[0][col];
      }
    }
  }

  for (row = 0; row < rows; row++) {
    for (col = 0; col < cols; col++) {
        printf("%f-%f-%f", temp, buff_A[row][col],buff_B[row][col]);
    }
  }


  return 0;
}
