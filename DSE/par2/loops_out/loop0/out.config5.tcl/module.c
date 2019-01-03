#include <stdio.h>
#define N 100
#define INITIALIZE {1,2,3,4,5,6,7,8,9,10, 11,12,13,14,15,16,17,18,19,20, 21,22,23,24,25,26,27,28,29,30, 31,32,33,34,35,36,37,38,39,40, 41,42,43,44,45,46,47,48,49,50, 51,52,53,54,55,56,57,58,59,60, 61,62,63,64,65,66,67,68,69,70, 71,72,73,74,75,76,77,78,79,80, 81,82,83,84,85,86,87,88,89,90, 91,92,93,94,95,96,97,98,99,-100}

volatile int a[N] = INITIALIZE;
volatile int b[N] = INITIALIZE;
volatile int c[N] = INITIALIZE;
volatile int d[N] = INITIALIZE;
volatile int e[N] = INITIALIZE;
volatile int f[N] = INITIALIZE;

volatile int a2[N] = INITIALIZE;
volatile int b2[N] = INITIALIZE;
volatile int c2[N] = INITIALIZE;
volatile int d2[N] = INITIALIZE;
volatile int e2[N] = INITIALIZE;
volatile int f2[N] = INITIALIZE;

volatile int a3[N] = INITIALIZE;
volatile int b3[N] = INITIALIZE;
volatile int c3[N] = INITIALIZE;
volatile int d3[N] = INITIALIZE;
volatile int e3[N] = INITIALIZE;
volatile int f3[N] = INITIALIZE;

volatile int r1[N] = INITIALIZE;
volatile int r2[N] = INITIALIZE;
volatile int r3[N] = INITIALIZE;
volatile int r4[N] = INITIALIZE;
volatile int r5[N] = INITIALIZE;
volatile int r6[N] = INITIALIZE;

volatile int r7[N] = INITIALIZE;
volatile int r8[N] = INITIALIZE;
volatile int r9[N] = INITIALIZE;

int main() {
    int sum = 0;
    int i;

    loop0:  for (i = 0; i < N-1; i++) {
      r1[i] = a[i] * b[i];
      r2[i] = c[i] * d[i];
      r3[i] = e[i] * f[i];
      r4[i] = a2[i] * b2[i];
  		r5[i] = c2[i] * d2[i];
  		r6[i] = e2[i] * f2[i];
  		r7[i] = a3[i]/b3[i];
  		r8[i] = c3[i]/d3[i];
  		r9[i] = e3[i]/f3[i];
    }

    if (sum == 0) {
        printf("PASSED\n");
    } else {
        printf("FAILED\n");
    }

    return sum;
}
