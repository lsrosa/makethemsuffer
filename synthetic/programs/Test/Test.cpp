#include <CodeTemplate.h>
#include <Loop1.h>
#include <Loop2.h>
#include <code-manipulator.h>
#include <iostream>
#include <fstream>
using namespace std;

int main(){
  Loop1 *c1 = new Loop1();
  Loop2 *c2 = new Loop2();

  std::cout << "Loop1:\ninputs: "<< c1->inputListSize() << "\noutputs:" << c1->outputListSize() << "\n\n";

  std::cout << "Loop2 :\ninputs: "<< c2->inputListSize() << "\noutputs:" << c2->outputListSize() << "\n\n";

  CodeManipulator *cm = new CodeManipulator();

  CodeTemplate * cr = cm->serial(c1,c2);
  std::cout << "LoopR:\noutputs: "<< cr->outputListSize() << "\ninputs:" << cr->inputListSize() << "\n\n";

  //std::cout << cr->getCode() << '\n';

  cr->printCode("output.bc");
  return 0;
}
