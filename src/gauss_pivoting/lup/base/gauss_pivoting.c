#define ICHAR 80  /*  Length of array holding description of
                      the problem  */

#define IDEBUG 1  /*  Flag to enable printing of intermediate
                      results of decomposition =1 yes, =0 no. */

void gauss(
	double *a,
	double *b,
	double *x,
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

int main (void)
{
double sum;
float  aij,bi;
char   desc[ICHAR];
int    i,j,n;

n=4;

double x[n];

/*   Read the elements of A */
double a[4][4] = { 2,  1,  0,  0, 1,  2,  1,  0, 0,  1,  2,  1, 0,  0,  1,  2};

//matrix_print_off (n,n,a);
/*  Read the elements of b */

double b[4] = {2, 1, 4, 8};

//fclose(finput); /*  Close the input file  */
/*
printf("\nMatrices read from input file\n");

printf("\nMatrix A\n\n");
matrix_print_off (n,n,a);

printf("\nVector b\n\n");
vector_print_off (n,b);
*/
/* Call the Gaussian elimination function */

	gauss((double*)a,b,x,n);

	for (i = 0; i < n; i++) {
		sum += x[i];
		//printf ("%f ", x[i]);
	}

return (int)sum;
}
