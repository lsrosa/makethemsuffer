#include <stdio.h>
#define UNR 1
#define n 10
#define loop 2

int main(){
  int l, ky, kx, i, j, nl1, nl2;
  float sig = 0.2;
  float du1[n+1], du2[n+1], du3[n+1];
  float u1[2][n+1][3+1], u2[2][n+1][3+1], u3[2][n+1][3+1];
  int a[3][3];
  float sum;

  for ( l=1 ; l<=loop ; l++ ) {
    nl1 = 0;
    nl2 = 1;
    for ( kx=1 ; kx<3 ; kx++ ){
      loop1:
      #pragma unroll UNR
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

  return u3[nl2][ky][kx];
}
