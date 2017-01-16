#define ICHAR 80  /*  Length of array holding description of
                      the problem  */

#define IDEBUG 1  /*  Flag to enable printing of intermediate
                      results of decomposition =1 yes, =0 no. */


/*   Function Prototypes  */

int matrix_print_off (int nr, int nc, double *A);
int  vector_print_off (int nr, double *x);

__kernel void gauss(
	__global double * restrict a,
	__global double * restrict b,
	__global double * restrict x,
	int n
){
int   i,j,k,m,rowx;
double xfac,temp,temp1,amax;
rowx = 0;   /* Keep count of the row interchanges */
for (k=0; k<n-1; ++k) {
     amax = (double) fabs(a[k*n+k]) ;
     m = k;
     for (i=k+1; i<n; i++){   /* Find the row with largest pivot */
               xfac = (double) fabs(a[i*n+k]);
               if(xfac > amax) {amax = xfac; m=i;}
     }
     if(m != k) {  /* Row interchanges */
                 rowx = rowx+1;
                 temp1 = b[k];
                 b[k]  = b[m];
                 b[m]  = temp1;
                 for(j=k; j<n; j++) {
                       temp = a[k*n+j];
                       a[k*n+j] = a[m*n+j];
                       a[m*n+j] = temp;
                 }
      }
			//if(IDEBUG == 1) {printf("\n A after decomposition step %d\n\n",k);
			//			     matrix_print_off (n, n, a);}
       for (i=k+1; i<n; ++i) {
          xfac = a[i*n+k]/a[k*n+k];

               for (j=k+1; j<n; ++j) {
                   a[i*n+j] = a[i*n+j]-xfac*a[k*n+j];
               }
          b[i] = b[i]-xfac*b[k];
       }
}

for (j=0; j<n; ++j) {
  k=n-1-j;//+1; changed to -1 to ajust indexes
  x[k] = b[k];
       for(i=k+1; i<n; ++i) {
         x[k] = x[k]-a[k*n+i]*x[i];
       }
  x[k] = x[k]/a[k*n+k];
}

//if(IDEBUG == 1) printf("\nNumber of row exchanges = %d\n",rowx);

}
