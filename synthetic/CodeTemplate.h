#include <vector>
#include <string>

using namespace std;

class CodeTemplate{
  private:
    vector<string> inputList;
    vector<string> outputList;
    vector<string> variableList;

    bool alreadyInput(string snew);
    bool alreadyOutput(string snew);
    bool alreadyVariable(string snew);

    string code;

  public:
    CodeTemplate();

    void addInput(string s);
    void addOutput(string s);
    void addVariable(string s);

    int inputListSize();
    int outputListSize();

    void appendCode(string s);
    string getCode();
    
  friend class CodeManipulator;
};
