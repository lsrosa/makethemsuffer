#define n 100
#define loop 100

//__kernel void add_int(float u1[2][n+1][3], float u2[2][n+1][3], float u3[2][n+1][3], int a[3][3], float sig){
__kernel void add_int(
  __global float * restrict u1,//[2][n+1][3],
  __global float * restrict u2,//[2][n+1][3],
  __global float * restrict u3,//[2][n+1][3],
  __global int * restrict a,
  float sig
  ){

    float du1[n+1], du2[n+1], du3[n+1];
    int l, ky, kx, nl1, nl2;

    for ( l=1 ; l<=loop ; l++ ) {
      nl1 = 0;
      nl2 = 1;
    for ( kx=1 ; kx<3 ; kx++ ){
      for( ky=1 ; ky<n ; ky++ ) {
        du1[ky] = u1[nl1*n*3+(ky+1)*(3+1)+kx] - u1[nl1*n*3+(ky-1)*(3+1)+kx];
        du2[ky] = u2[nl1*n*3+(ky+1)*(3+1)+kx] - u2[nl1*n*3+(ky-1)*(3+1)+kx];
        du3[ky] = u3[nl1*n*3+(ky+1)*(3+1)+kx] - u3[nl1*n*3+(ky-1)*(3+1)+kx];

        u1[nl2*(n+1)*(3+1)+ky*(3+1)+kx] = u1[nl1*(n+1)*(3+1)+ky*(3+1)+kx]+a[0]*du1[ky]+a[1]*du2[ky]+a[2]*du3[ky] + sig*(u1[nl1*(n+1)*(3+1)+ky*(3+1)+(kx+1)]-2.0*u1[nl1*(n+1)*(3+1)+ky*(3+1)+kx]+u1[nl1*(n+1)*(3+1)+ky*(3+1)+(kx-1)]);

        u2[nl2*(n+1)*(3+1)+ky*(3+1)+kx] = u2[nl1*(n+1)*(3+1)+ky*(3+1)+kx]+a[3]*du1[ky]+a[4]*du2[ky]+a[5]*du3[ky] + sig*(u2[nl1*(n+1)*(3+1)+ky*(3+1)+(kx+1)]-2.0*u2[nl1*(n+1)*(3+1)+ky*(3+1)+kx]+u2[nl1*(n+1)*(3+1)+ky*(3+1)+(kx-1)]);

        u3[nl2*(n+1)*(3+1)+ky*(3+1)+kx] = u3[nl1*(n+1)*(3+1)+ky*(3+1)+kx]+a[6]*du1[ky]+a[7]*du2[ky]+a[8]*du3[ky] + sig*(u3[nl1*(n+1)*(3+1)+ky*(3+1)+(kx+1)]-2.0*u3[nl1*(n+1)*(3+1)+ky*(3+1)+kx]+u3[nl1*(n+1)*(3+1)+ky*(3+1)+(kx-1)]);
      }
    }
  }

}
