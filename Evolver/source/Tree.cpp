#include "../headers/Tree.h"

Tree::Tree(Node *root)
{
    this->root = root;
}

Tree::Tree()
{
    this->root = new Node(GlobalVars::getInstance()->getStringOfOperator(GlobalVars::getInstance()->getRandomOperator()));
    BuildRandTree(root, 0);
}

Tree::Tree(const Tree &t)
{
    this->root = new Node(t.root->info);
    BuildCopyTree(this->root, t.root);
}

void Tree::BuildCopyTree(Node *node, Node *copyNode)
{
    if (copyNode->left != NULL)
    {
        node->left = new Node(copyNode->left->info);
        BuildCopyTree(node->left, copyNode->left);
    }

    if (copyNode->right != NULL)
    {
        node->right = new Node(copyNode->right->info);
        BuildCopyTree(node->right, copyNode->right);
    }
}

void Tree::BuildRandTree(Node *node, int depth)
{
    float chanceLeft = rand() % 100;
    if (chanceLeft > 40 && depth < 5)
    {
        node->left = new Node(GlobalVars::getInstance()->getStringOfOperator(GlobalVars::getInstance()->getRandomOperator()));
        BuildRandTree(node->left, depth + 1);
    }
    else
    {
        float chanceVar = rand() % 100;
        if (chanceVar < 20)
        {
            node->left = new Node(GlobalVars::getInstance()->getRandomVar());
        }
        else
        {
            node->left = new Node(to_string((rand() % GlobalVars::getInstance()->randomNumMax) + GlobalVars::getInstance()->randomNumMin));
        }
    }

    float chanceRight = rand() % 100;
    if (chanceRight > 40 && depth < 5)
    {
        node->right = new Node(GlobalVars::getInstance()->getStringOfOperator(GlobalVars::getInstance()->getRandomOperator()));
        BuildRandTree(node->right, depth + 1);
    }
    else
    {
        float chanceVar = rand() % 100;
        if (chanceVar < 20)
        {
            node->right = new Node(GlobalVars::getInstance()->getRandomVar());
        }
        else
        {
            node->right = new Node(to_string((rand() % GlobalVars::getInstance()->randomNumMax) + GlobalVars::getInstance()->randomNumMin));
        }
    }
}

void Tree::unload()
{
    unloadR(root);
}

void Tree::unloadR(Node* node)
{
    if(node->left != NULL)
    {
        unloadR(node->left);
    }

    if(node->right != NULL)
    {
        unloadR(node->right);
    }

    delete node;

}
float Tree::solve(float X, float Y, float TIME)
{
    return solveR(root, X, Y, TIME);
}

float Tree::solveR(Node *node, float X, float Y, float TIME)
{

    //If not in map, its a number
    if (node->info == "UV.x")
    {
        return X;
    }

    if (node->info == "UV.y")
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
            return solveR(node->left, X, Y, TIME) + cosf(solveR(node->right, X, Y, TIME));
            break;
        case Operators::CosMultiply:
            return solveR(node->left, X, Y, TIME) * cosf(solveR(node->right, X, Y, TIME));
            break;
        case Operators::SinMultiply:
            return solveR(node->left, X, Y, TIME) * sinf(solveR(node->right, X, Y, TIME));
            break;
        case Operators::SinPlus:
            return solveR(node->left, X, Y, TIME) + sinf(solveR(node->right, X, Y, TIME));
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

    if (node->typeId != 0)
    {
        s.push_back("(");
    }
    vector<string> left = toStringR(node->left);
    s.insert(s.end(), left.begin(), left.end());

    s.push_back(node->info);
    if (node->typeId == 0 && !GlobalVars::getInstance()->isVariable(node->info))
    {
        s.push_back("f");
    }

    vector<string> right = toStringR(node->right);
    s.insert(s.end(), right.begin(), right.end());

    if (node->typeId == 2)
    {
        s.push_back(")");
    }
    if (node->typeId != 0)
    {
        s.push_back(")");
    }
    return s;
}

void Tree::naiveMutate()
{
    vector<Node *> nodes = getNodesR(root);
    int numMutations = rand() % 4 + 1;
    for (int i = 0; i < numMutations; i++)
    {
        int whichMutation = rand() % 8;
        switch (whichMutation)
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

        //want to double the chance this occurs so the mutations dont converge to a one node tree
        case 4:
        case 5:
            //Change number to operator, then append random numbers
            mutateLeafToOp();
            break;

        case 6:
            //Change Variable to number
            mutateVarToNum();
            break;

        case 7:
            //Change operator to variable
            mutateOpToVar();
            break;
        }
    }
}

void Tree::mutateNumToNum()
{
    vector<Node *> leaves = getNumLeavesR(root);
    if (leaves.size() == 0)
        return;
    Node *randLeaf = leaves[rand() % leaves.size()];
    float num = stof(randLeaf->info);
    float mult = .5f + ((rand() % 100) / 100);
    float result = num * mult;
    randLeaf->info = to_string(result);
}

void Tree::mutateLeafToOp()
{
    vector<Node *> leaves = getLeavesR(root);
    if (leaves.size() == 0)
        return;
    Node *randLeaf = leaves[rand() % leaves.size()];
    Operators op = GlobalVars::getInstance()->getRandomOperator();
    randLeaf->info = GlobalVars::getInstance()->getStringOfOperator(op);
    float left = (rand() % GlobalVars::getInstance()->randomNumMax) + GlobalVars::getInstance()->randomNumMin;
    float right = (rand() % GlobalVars::getInstance()->randomNumMax) + GlobalVars::getInstance()->randomNumMin;
    randLeaf->left = new Node(to_string(left));
    randLeaf->right = new Node(to_string(right));
    randLeaf->typeId = GlobalVars::getInstance()->GetId(randLeaf->info);
}

void Tree::mutateNumToVar()
{
    vector<Node *> leaves = getNumLeavesR(root);
    if (leaves.size() == 0)
        return;
    Node *randLeaf = leaves[rand() % leaves.size()];
    string var = GlobalVars::getInstance()->getRandomVar();
    randLeaf->info = var;
}

void Tree::mutateOpToNum()
{
    vector<Node *> ops = getOperatorNodes(root);

    if (ops.size() == 0)
        return;
    Node *randOp = ops[rand() % ops.size()];
    delete randOp->left;
    delete randOp->right;
    randOp->left = NULL;
    randOp->right = NULL;
    float num = (rand() % GlobalVars::getInstance()->randomNumMax) + GlobalVars::getInstance()->randomNumMin;
    randOp->info = to_string(num);
    randOp->typeId = 0;
}

void Tree::mutateOpToVar()
{
    vector<Node *> ops = getOperatorNodes(root);
    if (ops.size() == 0)
        return;

    Node *randOp = ops[rand() % ops.size()];
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
    vector<Node *> ops = getOperatorNodes(root);
    if (ops.size() == 0)
        return;

    Node *randOp = ops[rand() % ops.size()];
    Operators newOp = GlobalVars::getInstance()->getRandomOperator();
    randOp->info = GlobalVars::getInstance()->getStringOfOperator(newOp);
    randOp->typeId = GlobalVars::getInstance()->GetId(randOp->info);
}

void Tree::mutateVarToNum()
{
    vector<Node *> leaves = getVarLeavesR(root);
    if (leaves.size() == 0)
        return;

    Node *randLeaf = leaves[rand() % leaves.size()];
    float num = (rand() % GlobalVars::getInstance()->randomNumMax) + GlobalVars::getInstance()->randomNumMin;
    randLeaf->info = to_string(num);
}

vector<Node *> Tree::getNumLeavesR(Node *node)
{
    vector<Node *> nodes;

    if (node == NULL)
    {
        return nodes;
    }
    vector<Node *> left = getNumLeavesR(node->left);
    nodes.insert(nodes.end(), left.begin(), left.end());

    if (node->left == NULL && node->right == NULL && !GlobalVars::getInstance()->isVariable(node->info))
    {
        nodes.push_back(node);
    }

    vector<Node *> right = getNumLeavesR(node->right);
    nodes.insert(nodes.end(), right.begin(), right.end());
    return nodes;
}

vector<Node *> Tree::getVarLeavesR(Node *node)
{
    vector<Node *> nodes;

    if (node == NULL)
    {
        return nodes;
    }
    vector<Node *> left = getVarLeavesR(node->left);
    nodes.insert(nodes.end(), left.begin(), left.end());

    if (node->left == NULL && node->right == NULL && GlobalVars::getInstance()->isVariable(node->info))
    {
        nodes.push_back(node);
    }

    vector<Node *> right = getVarLeavesR(node->right);
    nodes.insert(nodes.end(), right.begin(), right.end());
    return nodes;
}

vector<Node *> Tree::getOperatorNodes(Node *node)
{
    vector<Node *> nodes;

    if (node == NULL)
    {
        return nodes;
    }
    vector<Node *> left = getOperatorNodes(node->left);
    nodes.insert(nodes.end(), left.begin(), left.end());

    if (node->typeId != 0)
    {
        nodes.push_back(node);
    }

    vector<Node *> right = getOperatorNodes(node->right);
    nodes.insert(nodes.end(), right.begin(), right.end());
    return nodes;
}

vector<Node *> Tree::getNodesR(Node *root)
{
    vector<Node *> nodes;

    if (root == NULL)
    {
        return nodes;
    }
    vector<Node *> left = getNodesR(root->left);
    nodes.insert(nodes.end(), left.begin(), left.end());

    nodes.push_back(root);

    vector<Node *> right = getNodesR(root->right);
    nodes.insert(nodes.end(), right.begin(), right.end());
    return nodes;
}

vector<Node *> Tree::getLeavesR(Node *node)
{
    vector<Node *> nodes;

    if (node == NULL)
    {
        return nodes;
    }
    vector<Node *> left = getLeavesR(node->left);
    nodes.insert(nodes.end(), left.begin(), left.end());

    if (node->left == NULL && node->right == NULL)
    {
        nodes.push_back(node);
    }

    vector<Node *> right = getLeavesR(node->right);
    nodes.insert(nodes.end(), right.begin(), right.end());
    return nodes;
}
