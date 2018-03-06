#define ICHAR 80  /*  Length of array holding description of
                      the problem  */

#define IDEBUG 1  /*  Flag to enable printing of intermediate
                      results of decomposition =1 yes, =0 no. */

double aabs(double a){
  if(a>=0) return a;
  else return -a;
}

int main (void){
float  aij,bi;
char   desc[ICHAR];
int    i,j,n,k,m,rowx;
int tc2=0, tc3=0, tc4=0;
n=10;

double x[n];
/*   Read the elements of A */
double a[10*10];
double b[10];

for(int i=0; i<n; i++){
  for (int j=0; j<n; j++) {
    a[i*10+j] = i+j+1;
  }
  b[i] = i+1;
}

double xfac,temp,temp1,amax;
rowx = 0;   /* Keep count of the row interchanges */
for (k=0; k<n-1; ++k) {
     amax = (double) aabs(a[k*n+k]) ;
     m = k;
     loop4: for (i=k+1; i<n; i++){   /* Find the row with largest pivot */
              //printf("hey4\n");
              tc4++;
               xfac = (double) aabs(a[i*n+k]);
               if(xfac > amax) {amax = xfac; m=i;}
     }
     if(m != k) {  /* Row interchanges */
       rowx = rowx+1;
       temp1 = b[k];
       b[k]  = b[m];
       b[m]  = temp1;
       loop3: for(j=k; j<n; j++) {
         //printf("hey3\n");
         tc3++;
         temp = a[k*n+j];
         a[k*n+j] = a[m*n+j];
         a[m*n+j] = temp;
       }
     }
			//if(IDEBUG == 1) {printf("\n A after decomposition step %d\n\n",k);
			//			     matrix_print_off (n, n, a);}
       for (i=k+1; i<n; ++i) {
          xfac = a[i*n+k]/a[k*n+k];

               loop2: for (j=k+1; j<n; ++j) {
                 //printf("hey2\n");
                 tc2++;
                   a[i*n+j] = a[i*n+j]-xfac*a[k*n+j];
               }
          b[i] = b[i]-xfac*b[k];
       }
}

for (j=0; j<n; ++j) {
  k=n-1-j;//+1; changed to -1 to ajust indexes
  x[k] = b[k];
       loop1: for(i=k+1; i<n; ++i) {
         x[k] = x[k]-a[k*n+i]*x[i];
       }
  x[k] = x[k]/a[k*n+k];
}

printf("%d-%d-%d\n", tc2, tc3, tc4);
return x[k];
}
