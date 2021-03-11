#pragma once
#include <string>
#include "../headers/GlobalVars.h"
using namespace std;

class Node{
public:
    string info;
    int typeId;
    Node* left;
    Node* right;
    Node(string info);
};