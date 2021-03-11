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
        case Operators::CosPlus:
            return solveR(node->left, X,Y,TIME) + cosf(solveR(node->right, X,Y,TIME));
            break;
        case Operators::CosMultiply:
            return solveR(node->left, X,Y,TIME) * cosf(solveR(node->right,X,Y,TIME));
            break;
        case Operators::SinMultiply:
            return solveR(node->left, X,Y,TIME) * sinf(solveR(node->right,X,Y,TIME));
            break;
        case Operators::SinPlus:
            return solveR(node->left, X,Y,TIME) + sinf(solveR(node->right,X,Y,TIME));
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

void Tree::naiveMutate()
{
    vector<Node*> nodes = getNodesR(root);
    int numMutations = rand() % 4 + 1;
    for(int i = 0; i < numMutations; i++)
    {
        int whichMutation = rand() % 7;
        switch(whichMutation)
        {
            case 0:
               //Change number to variable
               mutateNumToVar();
            break;

            case 1:
                //Change a number to a different number
                mutateNumToNum();
            break;

            case 2:
                //wipe out part of tree by changing operator to number
                mutateOpToNum();
            break;

            case 3:
                //Change operator to a different operator
                mutateOpToOp();
            break;

            case 4:
                //Change number to operator, then append random numbers
                mutateLeafToOp();
            break;

            case 5:
                //Change Variable to number
                mutateVarToNum();
            break;

            case 6:
                //Change operator to variable
                mutateOpToVar();
            break;


        }
    }
  
    
    
    
    
}

void Tree::mutateNumToNum()
{
    vector<Node*> leaves = getNumLeavesR(root);
    if(leaves.size() == 0)
        return;
    Node* randLeaf = leaves[rand() % leaves.size()];
    float num = stof(randLeaf->info);
    float mult = .5f + ((rand() % 100)/100);
    float result = num * mult;
    randLeaf->info = to_string(result);
    
}

void Tree::mutateLeafToOp()
{
    vector<Node*> leaves = getLeavesR(root);
    if(leaves.size() == 0)
        return;
    Node* randLeaf = leaves[rand() % leaves.size()];
    Operators op = GlobalVars::getInstance()->getRandomOperator();
    randLeaf->info = GlobalVars::getInstance()->getStringOfOperator(op);
    float left = rand() % 10 + 1;
    float right = rand() % 10 + 1;
    randLeaf->left = new Node(to_string(left));
    randLeaf->right = new Node(to_string(right));
    randLeaf->typeId = GlobalVars::getInstance()->GetId(randLeaf->info);
}

void Tree::mutateNumToVar()
{
    vector<Node*> leaves = getNumLeavesR(root);
    if(leaves.size() == 0)
        return;
    Node* randLeaf = leaves[rand() % leaves.size()];
    string var = GlobalVars::getInstance()->getRandomVar();
    randLeaf->info = var;
}

void Tree::mutateOpToNum()
{
    vector<Node*> ops = getOperatorNodes(root);

    if(ops.size() == 0)
        return;
    Node* randOp = ops[rand() % ops.size()];
    delete randOp->left;
    delete randOp->right;
    randOp->left = NULL;
    randOp->right = NULL;
    float num  = rand() % 10 + 1;
    randOp->info = to_string(num);
    randOp->typeId = 0;
}

void Tree::mutateOpToVar()
{
    vector<Node*> ops = getOperatorNodes(root);
    if(ops.size() == 0)
        return;

    Node* randOp = ops[rand() % ops.size()];
    delete randOp->left;
    delete randOp->right;
    randOp->left = NULL;
    randOp->right = NULL;
    string var = GlobalVars::getInstance()->getRandomVar();
    randOp->info = var;
    randOp->typeId = 0;
}

void Tree::mutateOpToOp()
{
    vector<Node*> ops = getOperatorNodes(root);
    if(ops.size())
        return;

    Node* randOp = ops[rand() % ops.size()];
    Operators newOp = GlobalVars::getInstance()->getRandomOperator();
    randOp->info = GlobalVars::getInstance()->getStringOfOperator(newOp);
    randOp->typeId = GlobalVars::getInstance()->GetId(randOp->info);
}

void Tree::mutateVarToNum()
{
    vector<Node*> leaves = getVarLeavesR(root);
    if(leaves.size() == 0)
        return;

    Node* randLeaf = leaves[rand() % leaves.size()];
    float num = rand() % 10 + 1;
    randLeaf->info = to_string(num);

}

vector<Node*> Tree::getNumLeavesR(Node* node)
{
    vector<Node*> nodes;

    if(node == NULL)
    {
        return nodes;
    }
    vector<Node*> left = getNumLeavesR(node->left);
    nodes.insert(nodes.end(), left.begin(), left.end());

    if(node->left == NULL && node->right == NULL && !GlobalVars::getInstance()->isVariable(node->info))
    {
        nodes.push_back(node);
    }
   

    vector<Node*> right = getNumLeavesR(node->right);
    nodes.insert(nodes.end(), right.begin(), right.end());
    return nodes;
}

vector<Node*> Tree::getVarLeavesR(Node* node)
{
    vector<Node*> nodes;

    if(node == NULL)
    {
        return nodes;
    }
    vector<Node*> left = getVarLeavesR(node->left);
    nodes.insert(nodes.end(), left.begin(), left.end());

    if(node->left == NULL && node->right == NULL && GlobalVars::getInstance()->isVariable(node->info))
    {
        nodes.push_back(node);
    }
   

    vector<Node*> right = getVarLeavesR(node->right);
    nodes.insert(nodes.end(), right.begin(), right.end());
    return nodes;
}

vector<Node*> Tree::getOperatorNodes(Node* node)
{
     vector<Node*> nodes;

    if(node == NULL)
    {
        return nodes;
    }
    vector<Node*> left = getOperatorNodes(node->left);
    nodes.insert(nodes.end(), left.begin(), left.end());

    if(node->typeId != 0)
    {
        nodes.push_back(node);
    }
   

    vector<Node*> right = getOperatorNodes(node->right);
    nodes.insert(nodes.end(), right.begin(), right.end());
    return nodes;
}

vector<Node*> Tree::getNodesR(Node* root)
{
    vector<Node*> nodes;

    if(root == NULL)
    {
        return nodes;
    }
    vector<Node*> left = getNodesR(root->left);
    nodes.insert(nodes.end(), left.begin(), left.end());

    nodes.push_back(root);

    vector<Node*> right = getNodesR(root->right);
    nodes.insert(nodes.end(), right.begin(), right.end());
    return nodes;
}

vector<Node*> Tree::getLeavesR(Node* node)
{
    vector<Node*> nodes;

    if(node == NULL)
    {
        return nodes;
    }
    vector<Node*> left = getLeavesR(node->left);
    nodes.insert(nodes.end(), left.begin(), left.end());

    if(node->left == NULL && node->right == NULL)
    {
        nodes.push_back(node);
    }
   

    vector<Node*> right = getLeavesR(node->right);
    nodes.insert(nodes.end(), right.begin(), right.end());
    return nodes;
}
