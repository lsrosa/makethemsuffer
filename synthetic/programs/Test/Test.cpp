#include <CodeTemplate.h>
#include <Loop1.h>
#include <Loop2.h>
#include <Loop3.h>
#include <code-manipulator.h>
#include <iostream>
#include <fstream>
using namespace std;

int main(){
  Loop1 *c1 = new Loop1();
  Loop2 *c2 = new Loop2();
  Loop3 *c3 = new Loop3();

  std::cout << "Loop1:\ninputs: "<< c1->inputListSize() << "\noutputs:" << c1->outputListSize() << "\n\n";

  std::cout << "Loop2 :\ninputs: "<< c2->inputListSize() << "\noutputs:" << c2->outputListSize() << "\n\n";

  CodeManipulator *cm = new CodeManipulator();

  //CodeTemplate * cserial = cm->serial(c1,c2);
  //cserial->printCode("output_serial.bc");
  //std::cout << "LoopR:\noutputs: "<< cserial->outputListSize() << "\ninputs:" << cserial->inputListSize() << "\n\n";

  CodeTemplate * crepeat;
  for (int i = 100; i < 101; i++) {
    std::cout << "making serial repeat " << 10*i << '\n';
    crepeat = cm->repeatSerial (c3,10*i);
    crepeat->printCode("output_"+std::to_string(i)+".bc");
  }
  return 0;
}
