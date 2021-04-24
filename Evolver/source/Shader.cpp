#include "../headers/Shader.h"

Shader::Shader(const Shader& shader)
{
    redTree = new Tree(*shader.redTree);
    blueTree = new Tree(*shader.blueTree);
    greenTree = new Tree(*shader.greenTree);
    //  for( int i = 0; i < GlobalVars::getInstance()->numTimeStep; i++)
    //  {
    //     colorsByTimeStep.push_back(vector<vector<Color>>());   
    //  }
    vector<vector<vector<Color>>> arr(GlobalVars::getInstance()->numTimeStep, vector<vector<Color>>(GlobalVars::getInstance()->numRegions, vector<Color>(GlobalVars::getInstance()->numRegions, Color()) ));
    colorsByTimeStep = arr;
}

//Making random trees
Shader::Shader()
{
    redTree = new Tree();
    blueTree = new Tree();
    greenTree = new Tree();
     vector<vector<vector<Color>>> arr(GlobalVars::getInstance()->numTimeStep, vector<vector<Color>>(GlobalVars::getInstance()->numRegions, vector<Color>(GlobalVars::getInstance()->numRegions, Color()) ));
    colorsByTimeStep = arr;
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

void Shader::calculateColorsAtTimeStep(int timeStep)
{
    float actualTime = GlobalVars::getInstance()->timeStepFunc(timeStep);
    int numRegions = GlobalVars::getInstance()->numRegions;
    float increment = 1/(float)numRegions;

    for(int i = 0; i < numRegions; i++)
    {

        for(int j = 0; j <numRegions; j++)
        {
            float red = GlobalVars::getInstance()->clampValue(redTree->solve(increment * i, increment*j,actualTime),0,1);
            float blue = GlobalVars::getInstance()->clampValue(blueTree->solve(increment * i, increment*j,actualTime),0,1);
            float green = GlobalVars::getInstance()->clampValue(greenTree->solve(increment * i, increment*j,actualTime),0,1);
            colorsByTimeStep[timeStep][i][j] =  Color(red, blue,green);
        }
    }
}

float Shader::averageDiffOverTime()
{
    float avgTimeStep = 0;
    for(int i = 0; i < GlobalVars::getInstance()->numTimeStep -1; i++)
    {
        float avgMatrix = 0;
        for(int j  =0; j< GlobalVars::getInstance()->numRegions; j++)
        {
            for(int k = 0; k < GlobalVars::getInstance()->numRegions; k++)
            {
                float avgDiffColor = 0;
                avgDiffColor += abs(colorsByTimeStep[i][j][k].red - colorsByTimeStep[i+1][j][k].red);
                avgDiffColor += abs(colorsByTimeStep[i][j][k].blue - colorsByTimeStep[i+1][j][k].blue);
                avgDiffColor += abs(colorsByTimeStep[i][j][k].green - colorsByTimeStep[i+1][j][k].green);
                avgDiffColor /= 3;
                avgMatrix += avgDiffColor;
            }
        
        }
        avgMatrix /= GlobalVars::getInstance()->numRegions * GlobalVars::getInstance()->numRegions;
        avgTimeStep += avgMatrix;
    }
    avgTimeStep /= (GlobalVars::getInstance()->numTimeStep -1);
    return avgTimeStep;
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