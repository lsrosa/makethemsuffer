#include "CodeTemplate.h"
#include <iostream>
#include <assert.h>
//template <class T> class CodeTemplate{
//basic empty constructor
CodeTemplate::CodeTemplate(){
    std::cout << "/* constructing code template */" << '\n';
}

void CodeTemplate::setName(string s){
  name = s;
  return;
}

void CodeTemplate::addInput(string s){
  assert(!(alreadyInput(s) || alreadyOutput(s)));
  inputList.push_back(s);
  return;
}

void CodeTemplate::addOutput(string s){
  assert(!(alreadyInput(s) || alreadyOutput(s)));
  outputList.push_back(s);
  return;
}

void CodeTemplate::addVariable(string s){
  assert(!(alreadyVariable(s)));
  variableList.push_back(s);
  return;
}

int CodeTemplate::inputListSize(){
  return inputList.size();
}

int CodeTemplate::outputListSize(){
  return outputList.size();
}

bool CodeTemplate::alreadyInput(string snew){
  for (std::vector<string>::iterator i = inputList.begin(), ie = inputList.end(); i != ie; ++i) {
    if(!i->compare(snew))
      return true;
  }

  return false;
}

bool CodeTemplate::alreadyOutput(string snew){
  for (std::vector<string>::iterator i = outputList.begin(), ie = outputList.end(); i != ie; ++i) {
    if(!i->compare(snew))
      return true;
  }

  return false;
}

bool CodeTemplate::alreadyVariable(string snew){
  for (std::vector<string>::iterator i = variableList.begin(), ie = variableList.end(); i != ie; ++i) {
    if(!i->compare(snew))
      return true;
  }

  return false;
}

void CodeTemplate::appendCode(string s){
  code = code + s;
  return;
}

string CodeTemplate::getCode(){
  return code;
}
