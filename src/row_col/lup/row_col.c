#define n 100

void row_col(
  float * buff_A,
  float * buff_B,
  float * temp,
  int rows,
  int cols
){
  int row, col;

  for (row = 0; row < rows; row++) {
    for (col = 0; col < cols; col++) {
      if (col < cols) {
        buff_A[2*cols+col] = buff_A[1*cols+col]; // read from buff_A[1][col]
        buff_A[1*cols+col] = buff_A[0*cols+col]; // write to buff_A[1][col]
        buff_B[1*cols+col] = buff_B[0*cols+col];
        *temp = buff_A[0*cols+col];
      }
    }
  }
}

int main(){
  int row, col;
  int rows = n, cols = n;

  float buff_A[rows][cols], buff_B[rows][cols], temp;

  for (row = 0; row < rows; row++) {
    for (col = 0; col < cols; col++) {
      buff_A[row][col] = (2+row)*(col+1);
      buff_B[row][col] = (2+row)*(2*col+1);
    }
  }

  row_col((float *) buff_A, (float *) buff_B, &temp, rows, cols);

  /* just for now
  for (row = 0; row < rows; row++) {
    for (col = 0; col < cols; col++) {
        printf("%f-%f-%f", temp, buff_A[row][col],buff_B[row][col]);
    }
  }
*/

  return 0;
}
