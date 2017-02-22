#include "CodeTemplate.h"
#include "Loop1.h"
#include <iostream>

Loop1::Loop1(){
  for(int i = 0; i < inputsize; i++)
    addInput("vi"+i);

  for(int i = 0; i < outputsize; i++)
    addOutput("vo"+i);

    appendCode(
      "for(int i=0; i<=n1; i++){"
      "  for(int j=0; j<=n2; j++){"
      "    temp = 0;"
      "    for(int k=0; k<=n2; k++){"
      "      temp += vi1[i][k]*vi2[k][j];"
      "    }"
      "    vo1[i][j] = temp;"
      "  }"
      "}"
      "vo2 = vi1;"
      "vo3 = vi2;"
    );
}
