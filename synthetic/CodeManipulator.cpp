#include "CodeTemplate.h"
#include "CodeManipulator.h"
#include <assert.h>


CodeTemplate * CodeManipulator::serial(CodeTemplate * c1, CodeTemplate * c2){
  assert(c1->outputList.size() == c2->inputList.size());

  for(std::vector<string>::iterator i=c2->inputList.begin(), ie=c2->inputList.end(); i!=ie; ++i){
    //append code in_c2 = out_c1 in c1 code
  }

  //append c2 code in c1 code
  c1->appendCode(c2->code);

  //remove out_c1 from outputList
  c1->outputList.clear();

  //add out_c2 to out_c2 in outputLists
  for(std::vector<string>::iterator i=c2->outputList.begin(), ie=c2->outputList.end(); i!=ie; ++i){
    c1->addOutput(*i);
  }
}
