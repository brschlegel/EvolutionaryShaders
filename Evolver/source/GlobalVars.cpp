#include "../headers/GlobalVars.h"

GlobalVars* GlobalVars::instance  =0;

GlobalVars *GlobalVars::getInstance()
{
    if (!instance)
    {
        instance = new GlobalVars();
    }
    return instance;
}

int GlobalVars::GetId(string s)
{

    map<string, Operators>::iterator itr = operatorMap.find(s);
    if (itr != operatorMap.end())
    {
        Operators op = operatorMap[s];
        if (find(type1.begin(), type1.end(), op) != type1.end())
        {
            return 1;
        }
        if (find(type2.begin(), type2.end(), op) != type2.end())
        {
            return 2;
        }

        if (find(type3.begin(), type3.end(), op) != type3.end())
        {
            return 3;
        }
    }
    //if not in the operatorMap, then its a number
    return 0;
}

GlobalVars::GlobalVars()
{
    srand(time(NULL));

    randomNumMax = 10;
    randomNumMin = 1;
    numTimeStep = 10;
    numRegions = 20;
    simThreshold = .05;
    numThreads = 8;

    variables.push_back("UV.x");
    variables.push_back("UV.y");
    variables.push_back("TIME");

    operatorMap["+"] = Operators::Plus;
    operatorMap["-"] = Operators::Minus;
    operatorMap["/"] = Operators::Divide;
    operatorMap["*"] = Operators::Multiply;
    operatorMap["+cos("] = Operators::CosPlus;
    operatorMap["*cos("] = Operators::CosMultiply;
    operatorMap["+sin("] = Operators::SinPlus;
    operatorMap["*sin("] = Operators::SinMultiply;
    operatorMap["parabola("] = Operators::Parabola;
    operatorMap["impulse("] = Operators::Impulse;

    type1.push_back(Operators::Plus);
    type1.push_back(Operators::Minus);
    type1.push_back(Operators::Divide);
    type1.push_back(Operators::Multiply);

    type2.push_back(Operators::CosPlus);
    type2.push_back(Operators::CosMultiply);
    type2.push_back(Operators::SinPlus);
    type2.push_back(Operators::SinMultiply);

    type3.push_back(Operators::Impulse);
    type3.push_back(Operators::Parabola);

   
}

void GlobalVars::init()
{
    scoresCsv = Csv(numGenerations, populationSize, "scores");
    timeCsv = Csv(numGenerations, 1, "times");
    survivorScoresCsv = Csv(numGenerations, numSurvivors, "survivorScores");
}

bool GlobalVars::isVariable(string info)
{
    return find(variables.begin(), variables.end(), info) != variables.end();
}

Operators GlobalVars::getRandomOperator()
{
    map<string,Operators>::iterator itr = operatorMap.begin();
    advance(itr, rand() % operatorMap.size());
    return itr->second;
}

string GlobalVars::getStringOfOperator(Operators op)
{
    for(map<string, Operators>::iterator it = operatorMap.begin(); it != operatorMap.end(); ++it)
    {
        if(it->second == op)
        {
            return it->first;
        }
    }
    return " ";
}

string GlobalVars::getRandomVar()
{
    return variables[rand()%variables.size()];
}

float GlobalVars::timeStepFunc(int i)
{
    return (100 * i) + 1;
}

float GlobalVars::clampValue(float val, float lower, float upper)
{
    float num = val;
    if(val > upper)
        num = upper;
    if(val < lower)
        num = lower;
    return num;


}
