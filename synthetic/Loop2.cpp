#include "CodeTemplate.h"
#include "Loop2.h"
#include <iostream>

Loop2::Loop2(){
  for(int i = 0; i < inputsize; i++)
    addInput("v2i"+i);

  for(int i = 0; i < outputsize; i++)
    addOutput("v2o"+i);

  appendCode(
    "//banana;"
  );
}
