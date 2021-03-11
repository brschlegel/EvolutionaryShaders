#pragma once
#include <map>
#include <vector>
#include <string>
#include <algorithm>

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
    int GetId(string s);
  
private:
    
    vector<Operators> type1;
    vector<Operators> type2;
    vector<Operators> type3;

   GlobalVars();
};