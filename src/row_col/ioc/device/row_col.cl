__kernel void row_col(
  __global float * restrict buff_A,
  __global float * restrict buff_B,
  __global float * restrict temp,
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
