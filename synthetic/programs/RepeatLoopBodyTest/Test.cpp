#include <CodeTemplate.h>
#include <Array.h>
#include <code-manipulator.h>
#include <iostream>
#include <fstream>
using namespace std;

int main(){
  Array *c = new Array();
  CodeManipulator *cm = new CodeManipulator();

  CodeTemplate * crepeatLoopBody;
  int step = 1;
  for (int i = 1; i <= 1; i++) {
    std::cout << "making repeat loop body - " << step*i << '\n';
    crepeatLoopBody = cm->repeatLoopBody(c, step*i);
    //crepeat->printCode("output_"+std::to_string(step*i)+".bc");
    //crepeat->printCode("repeated.bc");

    //I really do not want to do this
    //You can create your own vector of vector to iterate and so something like
    //i->second = vecvec[i]
    std::cout << "wrapping as LegUp - " << step*i << '\n';
    CodeTemplate * cwrap = cm->wrapAsLegUP(crepeatLoopBody);
    //cwrap->printCode("wrap.bc");

    std::cout << "Applying Inline - " << step*i << '\n';
    cm->applyInline(cwrap);
    cwrap->printCode("wrap_inline_"+std::to_string(i)+".bc");
  }

  return 0;
}
