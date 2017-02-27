#include "CodeTemplate.h"
#include "CodeManipulator.h"
#include <assert.h>

#include <iostream>


CodeTemplate * CodeManipulator::serial(CodeTemplate * c1, CodeTemplate * c2){
  assert(c1->outputList.size() == c2->inputList.size());

  for(std::vector<string>::iterator c2i=c2->inputList.begin(), c2ie=c2->inputList.end(), c1i=c1->outputList.begin(); c2i!=c2ie; ++c2i, ++c1i){
    //append code in_c2 = out_c1 in c1 code
    std::cout << "c2 input = "<< *c2i << " -- c1 output = " << *c1i << '\n';
    c1->appendCode(*c2i+" = "+*c1i+";\n");
  }

  //append c2 code in c1 code
  c1->appendCode(c2->code);

  //remove out_c1 from outputList
  c1->outputList.clear();

  //add out_c2 to out_c2 in outputLists
  for(std::vector<string>::iterator i=c2->outputList.begin(), ie=c2->outputList.end(); i!=ie; ++i){
    c1->addOutput(*i);
  }

  return c1;
}
