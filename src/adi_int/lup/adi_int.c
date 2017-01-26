#include <stdio.h>

#define n 100
#define loop 100

void add_int(float u1[2][n+1][3+1], float u2[2][n+1][3+1], float u3[2][n+1][3+1], int a[3][3], float sig){

  float du1[n+1], du2[n+1], du3[n+1];
  int l, ky, kx, nl1, nl2;

  for ( l=1 ; l<=loop ; l++ ) {
    nl1 = 0;
    nl2 = 1;
    for ( kx=1 ; kx<3 ; kx++ ){
      for ( ky=1 ; ky<n ; ky++ ) {
        du1[ky] = u1[nl1][ky+1][kx] - u1[nl1][ky-1][kx];
        du2[ky] = u2[nl1][ky+1][kx] - u2[nl1][ky-1][kx];
        du3[ky] = u3[nl1][ky+1][kx] - u3[nl1][ky-1][kx];
        u1[nl2][ky][kx] = u1[nl1][ky][kx]+a[0][0]*du1[ky]+a[0][1]*du2[ky]+a[0][2]*du3[ky] + sig*(u1[nl1][ky][kx+1]-2.0*u1[nl1][ky][kx]+u1[nl1][ky][kx-1]);
        u2[nl2][ky][kx] = u2[nl1][ky][kx]+a[1][0]*du1[ky]+a[1][1]*du2[ky]+a[1][2]*du3[ky] + sig*(u2[nl1][ky][kx+1]-2.0*u2[nl1][ky][kx]+u2[nl1][ky][kx-1]);
        u3[nl2][ky][kx] = u3[nl1][ky][kx]+a[2][0]*du1[ky]+a[2][1]*du2[ky]+a[2][2]*du3[ky] + sig*(u3[nl1][ky][kx+1]-2.0*u3[nl1][ky][kx]+u3[nl1][ky][kx-1]);
        //printf("%f %f %f\n", u1[nl2][ky][kx], u2[nl2][ky][kx], u3[nl2][ky][kx]);
      }
    }
  }

}

int main(){
  int l, ky, kx, i, j;
  float sig = 0.2;
  float u1[2][n+1][3+1], u2[2][n+1][3+1], u3[2][n+1][3+1];
  int a[3][3];
  float sum;

  for ( ky=0; ky < n+1 ; ky++ ) {
    for ( kx=0 ; kx < 3+1 ; kx++ ){
      u1[0][ky][kx] = kx+ky;
      u2[0][ky][kx] = kx+ky;
      u3[0][ky][kx] = kx+ky;
    }
  }

  for (i = 0; i < 3; i++) {
    for (j = 0; j < 3; j++) {
      a[i][j] = i+j;
    }
  }

  add_int(u1, u2, u3, a, sig);

  sum = 0;
  for ( kx=1 ; kx<3 ; kx++ ){
    for ( ky=1 ; ky<n ; ky++ ) {
      sum += u1[1][ky][kx]+u2[1][ky][kx]+u3[1][ky][kx];
      printf("%f %f %f\n", u1[1][ky][kx],u2[1][ky][kx],u3[1][ky][kx]);
    }
  }

  return (int)sum;
}
