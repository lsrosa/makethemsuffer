#include <stdio.h>
#define UNR 2
#define N 100
#define INITIALIZE {1,2,3,4,5,6,7,8,9,10, 11,12,13,14,15,16,17,18,19,20, 21,22,23,24,25,26,27,28,29,30, 31,32,33,34,35,36,37,38,39,40, 41,42,43,44,45,46,47,48,49,50, 51,52,53,54,55,56,57,58,59,60, 61,62,63,64,65,66,67,68,69,70, 71,72,73,74,75,76,77,78,79,80, 81,82,83,84,85,86,87,88,89,90, 91,92,93,94,95,96,97,98,99,-100}

volatile long long a[N] = INITIALIZE;
volatile long long b[N] = INITIALIZE;
volatile long long c[N] = INITIALIZE;
volatile long long d[N] = INITIALIZE;

int main() {
    long long sum = 0;
    int i;
loop:
#pragma unroll UNR
for (i = 0; i < N-10; i++) {


    long long tmp1 = a[i+1] * c[i+6];
    long long tmp2 = d[i+4] * c[i+7];

    c[i+1] = tmp1 + tmp2 + c[i];

    printf("d[%d] = %lld\n", i+1, d[i+1]);

}
    sum = d[i];

    printf("sum = %lld\n", sum);

    if (sum == 91) {
        printf("PASSED\n");
    } else {
        printf("FAILED\n");
    }

    return sum;
}
