#pragma once
#include "../headers/GlobalVars.h"
#include "../headers/Tree.h"
#include "../headers/Color.h"
class Shader;
class Shader{
public:
    Tree* redTree;
    Tree* blueTree;
    Tree* greenTree;
    float score;
    Shader();
    Shader(const Shader& shader);
    void NaiveMutate();
    void unload();
    string ToString();
    bool operator< (const Shader &other);
    Tree* getTreeByIndex(int i);
};