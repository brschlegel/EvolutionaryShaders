#pragma once
#include <string>
using namespace std;

class Node{
public:
    string info;
    Node* left;
    Node* right;
    Node(string info);
};