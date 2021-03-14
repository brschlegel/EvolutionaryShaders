#pragma once
#include "../headers/GlobalVars.h"
#include "../headers/Tree.h"
class Shader;
class Shader{
    Tree* redTree;
    Tree* blueTree;
    Tree* greenTree;
    float score;
    Shader();
    Shader(const Shader& shader);
    void NaiveMutate();
};