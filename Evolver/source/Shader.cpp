#include "../headers/Shader.h"

Shader::Shader(const Shader& shader)
{
    redTree = new Tree(shader.redTree);
    blueTree = new Tree(shader.blueTree);
    greenTree = new Tree(shader.greenTree);
}

//Making random trees
Shader::Shader()
{
    redTree = Tree();
    blueTree = Tree();
    greenTreer = Tree();
}

void Shader::NaiveMutate()
{
    redTree->naiveMutate();
    blueTree->naiveMutate();
    greenTree->naiveMutate();
}