#include "CodeTemplate.h"
#include "Loop2.h"
#include <iostream>
#include <sstream>

Loop2::Loop2(){
  setName("Loop2");

  std::stringstream sst;
  for(int i = 0; i < inputsize; i++){
    sst << "v2i" << i;
    addInput(sst.str());
    sst.str("");
  }

  for(int i = 0; i < outputsize; i++){
    sst << "v2o" << i;
    addOutput(sst.str());
    sst.str("");;
  }

  addVariable("n21");
  addVariable("n22");

  appendCode(
    "for(int i=0; i<=n21; i++){\n"
    "  for(int j=0; j<=n22; j++){\n"
    "    temp = 0;"
    "    for(int k=0; k<=n22; k++){\n"
    "      temp += v2i1[i][k]*v2i2[k][j];\n"
    "    }"
    "    v2o1[i][j] = temp;\n"
    "  }\n"
    "}\n"
    "v2o2 = v2i1;\n"
  );
}
