#include <stdio.h>

#define n 5
#define loop 1
#define nl1 0
#define nl2 1

//__kernel void add_int(float u1[2][n+1][3], float u2[2][n+1][3], float u3[2][n+1][3], int a[3][3], float sig){
void add_int(
  float * u1,//[2][n+1][3],
  float * u2,//[2][n+1][3],
  float * u3,//[2][n+1][3],
  int * a,
  float sig ){

  float du1[n+1], du2[n+1], du3[n+1];
  int l, ky, kx;

/*
for ( l=1 ; l<=loop ; l++ ) {
  for ( kx=1 ; kx<3 ; kx++ ){
    for ( ky=1 ; ky<n ; ky++ ) {
        printf("%f ", u1[nl1*n*3+(ky+1)*(3+1)+kx]);
      }printf(" - kx=%d\n", kx);
    }printf("\n-----\n" );
  }
*/

  //printf("u1 %f\n", u1[0*n*3+1*3+2]);
  //printf("a %d\n", a[2*3*3+2*3+0]);
///*
  for ( l=1 ; l<=loop ; l++ ) {
    for ( kx=1 ; kx<3 ; kx++ ){
      for ( ky=1 ; ky<n ; ky++ ) {
        du1[ky] = u1[nl1*n*3+(ky+1)*(3+1)+kx] - u1[nl1*n*3+(ky-1)*(3+1)+kx];
        du2[ky] = u2[nl1*n*3+(ky+1)*(3+1)+kx] - u2[nl1*n*3+(ky-1)*(3+1)+kx];
        du3[ky] = u3[nl1*n*3+(ky+1)*(3+1)+kx] - u3[nl1*n*3+(ky-1)*(3+1)+kx];

        printf("%f %f %f | ", du1[ky],du2[ky],du3[ky]);

        u1[nl2*(n+1)*(3+1)+ky*(3+1)+kx] = u1[nl1*(n+1)*(3+1)+ky*(3+1)+kx]+a[0]*du1[ky]+a[1]*du2[ky]+a[2]*du3[ky] + sig*(u1[nl1*(n+1)*(3+1)+ky*(3+1)+(kx+1)]-2.0*u1[nl1*(n+1)*(3+1)+ky*(3+1)+kx]+u1[nl1*(n+1)*(3+1)+ky*(3+1)+(kx-1)]);

        u2[nl2*(n+1)*(3+1)+ky*(3+1)+kx] = u2[nl1*(n+1)*(3+1)+ky*(3+1)+kx]+a[3]*du1[ky]+a[4]*du2[ky]+a[5]*du3[ky] + sig*(u2[nl1*(n+1)*(3+1)+ky*(3+1)+(kx+1)]-2.0*u2[nl1*(n+1)*(3+1)+ky*(3+1)+kx]+u2[nl1*(n+1)*(3+1)+ky*(3+1)+(kx-1)]);

        u3[nl2*(n+1)*(3+1)+ky*(3+1)+kx] = u3[nl1*(n+1)*(3+1)+ky*(3+1)+kx]+a[6]*du1[ky]+a[7]*du2[ky]+a[8]*du3[ky] + sig*(u3[nl1*(n+1)*(3+1)+ky*(3+1)+(kx+1)]-2.0*u3[nl1*(n+1)*(3+1)+ky*(3+1)+kx]+u3[nl1*(n+1)*(3+1)+ky*(3+1)+(kx-1)]);
      }printf(" - kx=%d\n", kx);
    }
  }
//*/
}

int main(){
  int l, ky, kx, i, j;
  float sig = 0.2;
  float u1[2][n+1][3+1], u2[2][n+1][3+1], u3[2][n+1][3+1];
  int a[3][3];

  for ( ky=0; ky < n+1 ; ky++ ) {
    for ( kx=0 ; kx < 3+1 ; kx++ ){
      u1[0][ky][kx] = kx*(n+1)+ky;
      u2[0][ky][kx] = kx*(n+1)+ky;
      u3[0][ky][kx] = kx*(n+1)+ky;
    }
  }

  for (i = 0; i < 3; i++) {
    for (j = 0; j < 3; j++) {
      a[i][j] = i+j;
    }
  }


//  printf("u1 %f\n", u1[0][1][2]);
//  printf("a %d\n", a[2][2][0]);
  add_int((float *)u1, (float *)u2, (float *)u3, (int *)a, sig);

  printf("aaaaa %f\n", u2[1][1][1]);
}
