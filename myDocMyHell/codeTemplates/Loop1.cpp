#include "CodeTemplate.h"
#include "Loop1.h"
#include <iostream>
#include <sstream>

Loop1::Loop1() : CodeTemplate("Loop1"){
  setName("Loop1");
  //setSourceName("Loop1code");

  std::stringstream sst;
  for(int i = 0; i < inputsize; i++){
    sst << "vi" << i;
    addInput(sst.str());
    sst.str("");
  }

  for(int i = 0; i < outputsize; i++){
    sst << "vo" << i;
    addOutput(sst.str());
    sst.str("");;
  }

  addInput("n1");
  addInput("n2");

}
