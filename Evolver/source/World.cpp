#include "../headers/World.h"

void World::assignScore(Shader* shader, FitnessFunction fit)
{
    float num = 0;
    for(int i = 0; i < GlobalVars::getInstance()->numTimeStep; i++)
    {
     shader->calculateColorsAtTimeStep(i);
    }
    num += shader->averageDiffOverTime()*4;
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
    crossover();
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
        cout << "generation " << i << " done"<<endl;
    }
    return getSurvivors();
}

//this method is a little ugly, and very verbose
// I wanna make sure I do things right here, as well as try to make it effecient, hence all the naming and extra variables
void World::crossover()
{
    vector<Shader*> crossover;
    int size = shaders.size();
    for(int i = 0; i < size; i++)
    {
        int random = rand() % shaders.size();
        crossover.push_back(shaders[random]);
        shaders.erase(shaders.begin() + random);
    }
    //now order of crossover is randomized
    for(int i = 0; i < size/2; i++)
    {
        Shader* first = crossover[2*i];
        Shader* second = crossover[2* i+1];
        for(int j = 0; j < 3; j++)
        {
            Tree* firstTree = first->getTreeByIndex(j);
            vector<Node*> firstOperatorList = firstTree->getOperatorNodes(firstTree->root);
            if(firstOperatorList.size() <= 0)
                break;
            Node* firstNode = firstOperatorList[(rand() % firstOperatorList.size())];
            Node* firstSwitchNode;
            bool firstLeft = rand() % 2 == 0;
            if(firstLeft)
            {
                firstSwitchNode = firstNode->left;
            }
            else
            {
                firstSwitchNode = firstNode->right;
            }
            
            Tree* secondTree = second->getTreeByIndex(j);
            vector<Node*> secondOperatorList = secondTree->getOperatorNodes(secondTree->root);
            if(secondOperatorList.size() <= 0)
                break;
            Node* secondNode = secondOperatorList[rand() % secondOperatorList.size()];
            Node* secondSwitchNode;
            bool secondLeft = rand() % 2 == 0;
            if(secondLeft)
            {
                secondSwitchNode = secondNode->left;
            }
            else
            {
                secondSwitchNode = secondNode->right;
            }

            //actually do the crossover
            if(firstLeft)
                firstNode->left = secondSwitchNode;
            else    
                firstNode->right = secondSwitchNode;
            if(secondLeft)
                secondNode->left = firstSwitchNode;
            else
                secondNode->right = firstSwitchNode;

            
        }
    }

    shaders = crossover;
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