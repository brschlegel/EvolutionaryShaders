#pragma once
#include <string>
#include "../headers/Node.h"
#include "../headers/GlobalVars.h"
#include <map>
#include <vector>
#include<stdio.h>
#include<math.h>
#include <iostream>

using namespace std;


class Tree{
public:
    Node* root;
    Tree(Node* root);
    Tree();
    Tree(const Tree& t);
    void BuildRandTree(Node* node, int depth);
    void BuildCopyTree(Node* root, Node* copyNode );
    void unload();
    void unloadR(Node* node);
    
    float solve(float X, float Y, float TIME);
    float solveR(Node* node, float X, float Y, float TIME);
    string toString();
    vector<string> toStringR(Node* node);
    void naiveMutate();
    void mutateNumToVar();
    void mutateNumToNum();
    void mutateOpToNum();
    void mutateOpToOp();
    void mutateLeafToOp();
    void mutateVarToNum();
    void mutateOpToVar();
    vector<Node*> getNodesR(Node* root);
    vector<Node*> getLeavesR(Node* node);
    vector<Node*> getVarLeavesR(Node* node);
    vector<Node*> getNumLeavesR(Node* Node);
    vector<Node*> getOperatorNodes(Node* node);
    float impulse(float k, float x);
    float parabola(float x, float k);
 
 

};