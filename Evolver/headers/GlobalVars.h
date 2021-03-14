#pragma once
#include <map>
#include <vector>
#include <string>
#include <algorithm>
#include <time.h>
#include <stdlib.h>

using namespace std;
enum Operators
{
    Plus,
    Minus,
    Divide,
    Multiply,
    CosPlus,
    CosMultiply,
    SinPlus,
    SinMultiply
};
class GlobalVars;
class GlobalVars
{
public:
    static GlobalVars *instance;
    static GlobalVars* getInstance();

    map<string, Operators> operatorMap;
    vector<string> variables;
    int GetId(string s);
    bool isVariable(string info);
    Operators getRandomOperator();
    string getStringOfOperator(Operators op);
    string getRandomVar();
    int randomNumMin;
    int randomNumMax;
  
private:
    
    vector<Operators> type1;
    vector<Operators> type2;
    vector<Operators> type3;

   GlobalVars();
};