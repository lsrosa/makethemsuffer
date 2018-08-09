#include <stdio.h>
#define N 100
#define INITIALIZE {1,2,3,4,5,6,7,8,9,10, 11,12,13,14,15,16,17,18,19,20, 21,22,23,24,25,26,27,28,29,30, 31,32,33,34,35,36,37,38,39,40, 41,42,43,44,45,46,47,48,49,50, 51,52,53,54,55,56,57,58,59,60, 61,62,63,64,65,66,67,68,69,70, 71,72,73,74,75,76,77,78,79,80, 81,82,83,84,85,86,87,88,89,90, 91,92,93,94,95,96,97,98,99,-100}

volatile int a[N] = INITIALIZE;
volatile int b[N] = INITIALIZE;
volatile int c[N] = INITIALIZE;
volatile int d[N] = INITIALIZE;
volatile int e[N] = INITIALIZE;
volatile int f[N] = INITIALIZE;

int main() {
    int sum = 0;
    int i;

    loop0:  for (i = 0; i < N-1; i++) {
      int tmp1;
      tmp1 = a[i] * b[i];
      tmp1 *= c[i];
      tmp1 *= d[i];
      tmp1 *= e[i];
      tmp1 *= f[i];

      tmp1 /= a[i+1];
      tmp1 /= b[i+1];
      tmp1 /= c[i+1];
      sum += tmp1;
    }
    printf("sum = %d\n", sum);

    if (sum == 250102) {
        printf("PASSED\n");
    } else {
        printf("FAILED\n");
    }

    return sum;
}
