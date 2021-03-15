#include "../headers/World.h"

void World::assignScore(Shader* shader, FitnessFunction fit)
{
    float num = 0;
    switch(fit)
    {
    case FitnessFunction::NumVariable:
        num += shader->redTree->getVarLeavesR(shader->redTree->root).size();
        num += shader->blueTree->getVarLeavesR(shader->blueTree->root).size();
        num += shader->greenTree->getVarLeavesR(shader->greenTree->root).size();
    }
    shader->score = num;
}

vector<Shader*> World::getSurvivors()
{
   
    sort(shaders.begin(), shaders.end(), ScoreComparison());
    for(int i = shaders.size() - numSurvivors - 1; i > -1; i--)
    {
        shaders[i]->unload();
        shaders.erase(shaders.begin() + i);
        
    }
    return vector<Shader*>(shaders.begin(), shaders.begin() + numSurvivors);
}

void World::createNewGeneration()
{
    int numPerSurvivor = populationSize / numSurvivors;
    vector<Shader*> newGen;
    for(Shader* s : shaders)
    {
        for(int i = 0; i < numPerSurvivor; i++)
        {
            Shader* newShader = new Shader(*s);
            newShader->NaiveMutate();
            newGen.push_back(newShader);
        }
    }
    shaders = newGen;
}

vector<Shader*> World::evolve()
{
    for(int i = 0; i < numGenerations; i++)
    {
        for(Shader* s : shaders)
        {
            assignScore(s, FitnessFunction::NumVariable);
        }
        shaders = getSurvivors();
        createNewGeneration();
    }
    return getSurvivors();
}

World::World(int numRegions, int numSurvivors, int populationSize, int numGenerations)
{
    this->numRegions = numRegions;
    this->numSurvivors = numSurvivors;
    this->populationSize = populationSize;
    this->numGenerations = numGenerations;
    for(int i = 0; i < populationSize; i++)
    {
        shaders.push_back(new Shader());
    }
}