#include "../headers/Tree.h"

Tree::Tree(Node *root)
{
    this->root = root;
    
}

float Tree::solve(float X, float Y, float TIME)
{
    return solveR(root, X, Y, TIME);
}

float Tree::solveR(Node *node, float X, float Y, float TIME)
{

    //If not in map, its a number
    if (node->info == "X")
    {
        return X;
    }

    if (node->info == "Y")
    {
        return Y;
    }

    if (node->info == "TIME")
    {
        return TIME;
    }

    map<string, Operators>::iterator itr = GlobalVars::getInstance()->operatorMap.find(node->info);
    if (itr != GlobalVars::getInstance()->operatorMap.end())
    {
        switch (GlobalVars::getInstance()->operatorMap[node->info])
        {
        case Operators::Plus:
            return solveR(node->left, X, Y, TIME) + solveR(node->right, X, Y, TIME);
            break;
        case Operators::Minus:
            return solveR(node->left, X, Y, TIME) - solveR(node->right, X, Y, TIME);
            break;
        case Operators::Multiply:
            return solveR(node->left, X, Y, TIME) * solveR(node->right, X, Y, TIME);
            break;
        case Operators::Divide:
            return solveR(node->left, X, Y, TIME) / solveR(node->right, X, Y, TIME);
            break;
        case CosPlus:
            return solveR(node->left, X,Y,TIME) + cosf(solveR(node->right, X,Y,TIME));
            break;
        case CosMultiply:
            return solveR(node->left, X,Y,TIME) * cosf(solveR(node->right,X,Y,TIME));
            break;
        }
    }
    return stof(node->info);
}

string Tree::toString()
{
    vector<string> s = toStringR(root);
    string final;
    for (string str : s)
    {
        final += str;
    }
    return final;
}

vector<string> Tree::toStringR(Node *node)
{
    vector<string> s;
    if (node == NULL)
    {
        return s;
    }

    if(node->typeId != 0)
    {
        s.push_back("(");
    }
    vector<string> left = toStringR(node->left);
    s.insert(s.end(), left.begin(), left.end());

    s.push_back(node->info);

    vector<string> right = toStringR(node->right);
    s.insert(s.end(), right.begin(), right.end());


    if(node->typeId == 2)
    {
        s.push_back(")");
    }
    if(node->typeId != 0)
    {
        s.push_back(")");
    }
    return s;
}