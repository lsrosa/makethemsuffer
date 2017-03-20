#include "CodeTemplate.h"
#include "Loop2.h"
#include <iostream>
#include <sstream>

Loop2::Loop2() : CodeTemplate("Loop2"){
  setName("Loop2");
  //setSourceName("Loop2code");

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

}
