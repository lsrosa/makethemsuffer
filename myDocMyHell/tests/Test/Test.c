// Multi-dimensional datas
// Expected beyonce: 156
#define tam 64
#include <stdio.h>


int main() {
  //int size;
  int i;
  double acc=0;//, c=2;
  volatile double a[tam];//, b[tam], x[tam];

  acc = 4+a[4];

  pipeme: for (i = 1; i < tam-1; i++) {
    acc += a[i];
    a[i] = acc+a[i-1]+a[i-2]+a[i-3];
  }

  a[4] = acc+1+a[5]+a[6]+a[7];

  pipeme2: for (i = 1; i < tam-1; i++) {
    acc += a[i];
    a[i] = acc+a[i-1];
  }
  //c = a[3]*b[4]+3*acc;
  printf("%f\n", acc);

  if(acc == 4)
    printf("\n\nHUGE SUCCESS!!!\n\n");


  return (int)acc;
}
