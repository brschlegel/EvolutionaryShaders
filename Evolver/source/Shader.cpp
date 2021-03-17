#include "../headers/Shader.h"

Shader::Shader(const Shader& shader)
{
    redTree = new Tree(*shader.redTree);
    blueTree = new Tree(*shader.blueTree);
    greenTree = new Tree(*shader.greenTree);
}

//Making random trees
Shader::Shader()
{
    redTree = new Tree();
    blueTree = new Tree();
    greenTree = new Tree();
}

void Shader::NaiveMutate()
{
    redTree->naiveMutate();
    blueTree->naiveMutate();
    greenTree->naiveMutate();
}

void Shader::unload()
{
    redTree->unload();
    blueTree->unload();
    greenTree->unload();
    delete redTree;
    delete blueTree;
    delete greenTree;
}

string Shader::ToString()
{
    return "------------------------------------\nred: " + redTree->toString() + "\nblue: " + blueTree->toString() + "\ngreen: " + greenTree->toString();
}

bool Shader::operator< (const Shader &other)
{
    return score < other.score;
}

Tree* Shader::getTreeByIndex(int i)
{
    switch(i)
    {
        case 0:
            return redTree;
            break;
        case 1:
            return blueTree;
            break;
        case 2:
            return greenTree;
            break;
    }
    return NULL;
}