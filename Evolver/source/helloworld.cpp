#include <iostream>
#include <vector>
#include <string>
#include "../headers/Writer.h"
#include "../headers/Node.h"
#include "../headers/Tree.h"
#include "../headers/World.h"
#include <chrono>
#include "../headers/Stats.h"

using namespace std;


int main()
{

    int numGenerations;
    int numSurvivors;
    int populationSize;
    int numRegions;
    int numThreads;
    cout << "So you want to evolve some shaders?" << endl << "Number of Generations? ";
    cin >> numGenerations;
    cout << "Number of Survivors? ";
    cin >>numSurvivors;
    cout << "Population Size? ";
    cin >> populationSize;
    cout << "Number of Regions ";
    cin >> numRegions;
    cout << "Number of threads";
    cin >> numThreads;
   

    Writer w;
    auto startTime = std::chrono::steady_clock::now();
    World world = World(numRegions,numSurvivors,populationSize,numGenerations);
    GlobalVars::getInstance()->numGenerations = numGenerations;
    GlobalVars::getInstance()->numSurvivors = numSurvivors;
    GlobalVars::getInstance()->populationSize = populationSize;
    GlobalVars::getInstance()->numThreads = numThreads;
    GlobalVars::getInstance()->init();

    vector<Shader*> shaders = world.evolve(FitnessFunction::NumVariable);
    cout<<"evolution done" <<endl;  
    for(Shader* s : shaders)
    {
        world.assignScore(s, FitnessFunction::NumVariable);
        cout << "score: " << s->score <<endl;
    }
    
    w.write("shannon", shaders);
    GlobalVars::getInstance()->timeCsv.write();
    GlobalVars::getInstance()->scoresCsv.write();
    GlobalVars::getInstance()->survivorScoresCsv.write();
    GlobalVars::getInstance()->timeDiffCsv.write();
    int x;
    cin>> x;
}

