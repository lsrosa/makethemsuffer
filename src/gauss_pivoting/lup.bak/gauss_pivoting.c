#define ICHAR 80  /*  Length of array holding description of
                      the problem  */

#define IDEBUG 1  /*  Flag to enable printing of intermediate
                      results of decomposition =1 yes, =0 no. */


/*   Function Prototypes  */

int matrix_print_off (int nr, int nc, double *A);
int  vector_print_off (int nr, double *x);

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
double  *a,*b,*x;
float  aij,bi;
char   desc[ICHAR];
int    i,j,n;
FILE   *finput;

/* Open the file containing a description, n,A and b  */

finput = fopen("gauss.dat","r");
if (finput == NULL) {
						printf("Data file gauss.dat not found\n");
						return(-1);
					}

/*
    Get a one line description of the matrix problem and
    then the dimension, n, of the system A[n][n] and b[n]
*/
fgets(desc, ICHAR , finput);
fscanf(finput, "%d",&n);
printf("%s", desc);
printf("\nDimension of matrix = %d\n\n",n);

a = calloc(n*n, sizeof(double *));

b = calloc(n, sizeof(double));
x = calloc(n, sizeof(double));

/*   Read the elements of A */

for (i=0;i<n;i++){
	for (j=0;j<n;j++) {
		fscanf(finput,"%f ",&aij);
		a[i*n+j] = (double) aij;
	}
}
//matrix_print_off (n,n,a);
/*  Read the elements of b */

for (i=0;i<n;i++){
   fscanf(finput,"%f ",&bi);
   b[i] = (double) bi;
}

//fclose(finput); /*  Close the input file  */
/*
printf("\nMatrices read from input file\n");

printf("\nMatrix A\n\n");
matrix_print_off (n,n,a);

printf("\nVector b\n\n");
vector_print_off (n,b);
*/
/* Call the Gaussian elimination function */

	gauss(a,b,x,n);

printf("\nSolution x\n\n");
vector_print_off (n,x);

return(0);
}

int matrix_print_off (int nr, int nc, double *A){
	int i,j;

	if ( nr <= 0 ) return (-1);
	if ( nc <= 0 ) return (-2);

	for (i = 0; i < nr; i++) {

	 	for (j = 0; j < nc; j++) {
			printf ("%9.4f  ", A[i*nc+j]);
		}

		printf("\n"); /* Insert a new line at end of each row */
	}
	return (0);
}

int vector_print_off (int nr, double *x){
int i;

if ( nr <= 0 ) return (-1);

for (i = 0; i < nr; i++) {
	printf ("%9.4f  \n", x[i]);
}
printf("\n");  /* Insert a new line at the end  */
return (0);
}
