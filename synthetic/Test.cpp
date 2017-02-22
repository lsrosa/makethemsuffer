#include "CodeTemplate.h"
#include "Loop1.h"
#include "Loop2.h"
#include "CodeManipulator.h"
#include <iostream>

using namespace std;

int main(){
  Loop1 *c1 = new Loop1();
  Loop2 *c2 = new Loop2();

  std::cout << "Loop1:\noutputs: "<< c1->outputListSize() << "\ninputs:" << c1->inputListSize() << "\n\n";

  std::cout << "Loop2 :\noutputs: "<< c2->outputListSize() << "\ninputs:" << c2->inputListSize() << "\n\n";

  CodeManipulator *cm = new CodeManipulator();

  cm->serial(c1,c2);
  std::cout << "Loop1:\noutputs: "<< c1->outputListSize() << "\ninputs:" << c1->inputListSize() << "\n\n";

  std::cout << c1->getCode() << '\n';
}
