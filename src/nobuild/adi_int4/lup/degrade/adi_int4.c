#include <stdio.h>

#define n 10
#define loop 2

int main(){
  int l, ky, kx, i, j, nl1, nl2;
  float sig = 0.2;
  float du1[n+1], du2[n+1], du3[n+1];
  float u1[2][n+1][3+1], u2[2][n+1][3+1], u3[2][n+1][3+1];
  int a[3][3];

  float du21[n+1], du22[n+1], du23[n+1];
  float u21[2][n+1][3+1], u22[2][n+1][3+1], u23[2][n+1][3+1];
  int a2[3][3];

  float du41[n+1], du42[n+1], du43[n+1];
  float u41[2][n+1][3+1], u42[2][n+1][3+1], u43[2][n+1][3+1];
  int a4[3][3];
  float du421[n+1], du422[n+1], du423[n+1];
  float u421[2][n+1][3+1], u422[2][n+1][3+1], u423[2][n+1][3+1];
  int a42[3][3];

  float sum;

  for ( l=1 ; l<=loop ; l++ ) {
    nl1 = 0;
    nl2 = 1;
    for ( kx=1 ; kx<3 ; kx++ ){
      loop1: for ( ky=1 ; ky<n ; ky++ ) {
        du1[ky] = u1[nl1][ky+1][kx] - u1[nl1][ky-1][kx];
        du2[ky] = u2[nl1][ky+1][kx] - u2[nl1][ky-1][kx];
        du3[ky] = u3[nl1][ky+1][kx] - u3[nl1][ky-1][kx];
        du21[ky] = u21[nl1][ky+1][kx] - u21[nl1][ky-1][kx];
        du22[ky] = u22[nl1][ky+1][kx] - u22[nl1][ky-1][kx];
        du23[ky] = u23[nl1][ky+1][kx] - u23[nl1][ky-1][kx];
        du41[ky] = u41[nl1][ky+1][kx] - u41[nl1][ky-1][kx];
        du42[ky] = u42[nl1][ky+1][kx] - u42[nl1][ky-1][kx];
        du43[ky] = u43[nl1][ky+1][kx] - u43[nl1][ky-1][kx];
        du421[ky] = u421[nl1][ky+1][kx] - u421[nl1][ky-1][kx];
        du422[ky] = u422[nl1][ky+1][kx] - u422[nl1][ky-1][kx];
        du423[ky] = u423[nl1][ky+1][kx] - u423[nl1][ky-1][kx];

        u1[nl2][ky][kx] = u1[nl1][ky][kx]+a[0][0]*du1[ky]+a[0][1]*du2[ky]+a[0][2]*du3[ky] + sig*(u1[nl1][ky][kx+1]-2.0*u1[nl1][ky][kx]+u1[nl1][ky][kx-1]);
        u2[nl2][ky][kx] = u2[nl1][ky][kx]+a[1][0]*du1[ky]+a[1][1]*du2[ky]+a[1][2]*du3[ky] + sig*(u2[nl1][ky][kx+1]-2.0*u2[nl1][ky][kx]+u2[nl1][ky][kx-1]);
        u3[nl2][ky][kx] = u3[nl1][ky][kx]+a[2][0]*du1[ky]+a[2][1]*du2[ky]+a[2][2]*du3[ky] + sig*(u3[nl1][ky][kx+1]-2.0*u3[nl1][ky][kx]+u3[nl1][ky][kx-1]);
        //printf("%f %f %f\n", u1[nl2][ky][kx], u2[nl2][ky][kx], u3[nl2][ky][kx]);

        u21[nl2][ky][kx] = u21[nl1][ky][kx]+a2[0][0]*du21[ky]+a2[0][1]*du22[ky]+a2[0][2]*du23[ky] + sig*(u21[nl1][ky][kx+1]-2.0*u21[nl1][ky][kx]+u21[nl1][ky][kx-1]);
        u22[nl2][ky][kx] = u22[nl1][ky][kx]+a2[1][0]*du21[ky]+a2[1][1]*du22[ky]+a2[1][2]*du23[ky] + sig*(u22[nl1][ky][kx+1]-2.0*u22[nl1][ky][kx]+u22[nl1][ky][kx-1]);
        u23[nl2][ky][kx] = u23[nl1][ky][kx]+a2[2][0]*du21[ky]+a2[2][1]*du22[ky]+a2[2][2]*du23[ky] + sig*(u23[nl1][ky][kx+1]-2.0*u23[nl1][ky][kx]+u23[nl1][ky][kx-1]);
        //printf("%f %f %f\n", u1[nl2][ky][kx], u2[nl2][ky][kx], u3[nl2][ky][kx]);

        u41[nl2][ky][kx] = u41[nl1][ky][kx]+a4[0][0]*du41[ky]+a4[0][1]*du42[ky]+a4[0][2]*du43[ky] + sig*(u41[nl1][ky][kx+1]-2.0*u41[nl1][ky][kx]+u41[nl1][ky][kx-1]);
        u42[nl2][ky][kx] = u42[nl1][ky][kx]+a4[1][0]*du41[ky]+a4[1][1]*du42[ky]+a4[1][2]*du43[ky] + sig*(u42[nl1][ky][kx+1]-2.0*u42[nl1][ky][kx]+u42[nl1][ky][kx-1]);
        u43[nl2][ky][kx] = u43[nl1][ky][kx]+a4[2][0]*du41[ky]+a4[2][1]*du42[ky]+a4[2][2]*du43[ky] + sig*(u43[nl1][ky][kx+1]-2.0*u43[nl1][ky][kx]+u43[nl1][ky][kx-1]);
        //printf("%f %f %f\n", u41[nl2][ky][kx], u42[nl2][ky][kx], u43[nl2][ky][kx]);

        u421[nl2][ky][kx] = u421[nl1][ky][kx]+a42[0][0]*du421[ky]+a42[0][1]*du422[ky]+a42[0][2]*du423[ky] + sig*(u421[nl1][ky][kx+1]-2.0*u421[nl1][ky][kx]+u421[nl1][ky][kx-1]);
        u422[nl2][ky][kx] = u422[nl1][ky][kx]+a42[1][0]*du421[ky]+a42[1][1]*du422[ky]+a42[1][2]*du423[ky] + sig*(u422[nl1][ky][kx+1]-2.0*u422[nl1][ky][kx]+u422[nl1][ky][kx-1]);
        u423[nl2][ky][kx] = u423[nl1][ky][kx]+a42[2][0]*du421[ky]+a42[2][1]*du422[ky]+a42[2][2]*du423[ky] + sig*(u423[nl1][ky][kx+1]-2.0*u423[nl1][ky][kx]+u423[nl1][ky][kx-1]);
        //printf("%f %f %f\n", u41[nl2][ky][kx], u42[nl2][ky][kx], u43[nl2][ky][kx]);
      }
    }
  }

  return u3[nl2][ky][kx]+u23[nl2][ky][kx]+u43[nl2][ky][kx]+u423[nl2][ky][kx];
}
