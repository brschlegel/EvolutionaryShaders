#include <string>
#include "../headers/Node.h"
#include "../headers/GlobalVars.h"
#include <map>
#include <vector>
#include<stdio.h>
#include<math.h>

using namespace std;

class Tree{
public:
    Node* root;
    Tree(Node* root);
    float solve(float X, float Y, float TIME);
    float solveR(Node* node, float X, float Y, float TIME);
    string toString();
    vector<string> toStringR(Node* node);

};