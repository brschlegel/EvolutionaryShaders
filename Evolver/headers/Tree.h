#include <string>
#include "../headers/Node.h"
#include <map>
#include <vector>
using namespace std;
enum Operators {Plus, Minus, Divide, Multiply};
enum Functions {CosPlus, CosMinus, CosDivide, CosMultiply};
class Tree{
public:
    Node* root;
    Tree(Node* root);
    float solve(float X, float Y, float TIME);
    float solveR(Node* node, float X, float Y, float TIME);
    string toString();
    vector<string> toStringR(Node* node);
    map<string, Operators> operatorMap;
    map<string, Functions> functionMap;
};