#include "CodeTemplate.h"
#include "Loop3.h"
#include <iostream>
#include <sstream>

Loop3::Loop3() : CodeTemplate("Loop3"){
  setName("Loop3");
  //setSourceName("Loop1code");

  addInput("a");
  addInput("p");

  addOutput("b");
  addOutput("m");


}
