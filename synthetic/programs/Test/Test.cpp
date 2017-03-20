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
  //cserial->printFuncArgSizeMap();
  //cserial->printCode("output_serial.bc");
  //std::cout << "LoopR:\noutputs: "<< cserial->outputListSize() << "\ninputs:" << cserial->inputListSize() << "\n\n";

  CodeTemplate * crepeat;
  int step = 5;
  for (int i = 1; i < 101; i++) {
    std::cout << "making serial repeat - " << step*i << '\n';
    crepeat = cm->repeatSerial (c3, step*i);
    //crepeat->printCode("output_"+std::to_string(step*i)+".bc");
    //crepeat->printCode("repeated.bc");
    crepeat->printFuncArgSizeMap();
    crepeat->setFuncArgSizes("loop3", {23, 1, 23, 1});
    crepeat->printFuncArgSizeMap();
    //I really do not want to do this
    //You can create your own vector of vector to iterate and so something like
    //i->second = vecvec[i]
    std::cout << "wrapping as LegUp - " << step*i << '\n';
    CodeTemplate * cwrap = cm->wrapAsLegUP(crepeat);
    //cwrap->printCode("wrap.bc");

    std::cout << "Applying Inline - " << step*i << '\n';
    cm->applyInline(cwrap);
    cwrap->printCode("wrap_inline_"+std::to_string(step*i)+".bc");
  }

  return 0;
}
