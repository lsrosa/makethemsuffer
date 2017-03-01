#include "CodeTemplate.h"
#include "Loop1.h"
#include <iostream>
#include <sstream>

Loop1::Loop1() : CodeTemplate("Loop1"){
  setName("Loop1");
  //setSourceName("Loop1code");

  std::stringstream sst;
  for(int i = 0; i < inputsize; i++){
    sst << "v1i" << i;
    addInput(sst.str());
    sst.str("");
  }

  for(int i = 0; i < outputsize; i++){
    sst << "v1o" << i;
    addOutput(sst.str());
    sst.str("");;
  }

  addVariable("n1");
  addVariable("n2");

  appendCode(
    "for(int i=0; i<=n1; i++){\n"
    "  for(int j=0; j<=n2; j++){\n"
    "    temp = 0;\n"
    "    for(int k=0; k<=n2; k++){\n"
    "      temp += vi1[i][k]*vi2[k][j];\n"
    "    }\n"
    "    vo1[i][j] = temp;\n"
    "  }\n"
    "}\n"
    "vo2 = vi1;\n"
    "vo3 = vi2;\n"
  );
}
