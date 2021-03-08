#include "../headers/Tree.h"

Tree::Tree(Node* root)
{
    this->root = root;
    operatorMap["+"] = Operators::Plus;
    operatorMap["-"] = Operators::Minus;
    operatorMap["/"] = Operators::Divide;
    operatorMap["*"] = Operators::Multiply;
    functionMap["cos,+"] = Functions::CosPlus;
    functionMap["cos,-"] = Functions::CosMinus;
    functionMap["cos,*"] = Functions::CosMultiply;
    functionMap["cos,/"] = Functions::CosDivide;
}

float Tree::solve(float X, float Y, float TIME)
{
    return solveR(root, X, Y, TIME);
}

float Tree::solveR(Node* node, float X, float Y, float TIME)
{
   
    //If not in map, its a number
    if(node->info == "X")
    {
        return X;
    }

    if(node->info == "Y")
    {
        return Y;
    }

    if(node->info == "TIME")
    {
        return TIME;
    }

    map<string, Operators>::iterator itr = operatorMap.find(node->info);
    if(itr == operatorMap.end())
    {
        return stof(node->info);
    }

    switch(operatorMap[node->info])
    {
        case Operators::Plus:
        {
            return solveR(node->left, X, Y, TIME) + solveR(node->right, X, Y, TIME);
            break;
        }
        case Operators::Minus : 
            return solveR(node->left, X, Y, TIME) - solveR(node->right, X, Y, TIME);
            break;
    }
    return 0;
    
}

string Tree::toString()
{
    vector<string> s = toStringR(root);
    string final;
    for(string str : s)
    {
        final += str;
    }
    return final;
}

 vector<string> Tree::toStringR(Node* node)
{
    vector<string> s;
    if(node == NULL)
    {
        return s;
    }

    s.push_back("(");
    vector<string> left = toStringR(node->left);
    s.insert(s.end(), left.begin(), left.end());

    s.push_back(node->info);

    vector<string> right = toStringR(node->right);
    s.insert(s.end(), right.begin(), right.end());
    s.push_back(")");
    return s;
}