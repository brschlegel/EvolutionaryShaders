#include <iostream>
#include <vector>
#include <string>
#include "../headers/Writer.h"
#include "../headers/Node.h"
#include "../headers/Tree.h"
#include "../headers/World.h"
#include <chrono>

using namespace std;


int main()
{
   

    Writer w;
    auto startTime = std::chrono::steady_clock::now();
    World world = World(40,10,20,10);
    GlobalVars::getInstance()->numGenerations = 10;
    GlobalVars::getInstance()->numSurvivors = 10;
    GlobalVars::getInstance()->populationSize = 20;
    GlobalVars::getInstance()->init();

    vector<Shader*> shaders = world.evolve(FitnessFunction::Symmetry);
    cout<<"evolution done" <<endl;  
    for(Shader* s : shaders)
    {
        world.assignScore(s, FitnessFunction::Symmetry);
        cout << "score: " << s->score <<endl;
    }
    
    w.write("sym", shaders);
    GlobalVars::getInstance()->timeCsv.write();
    GlobalVars::getInstance()->scoresCsv.write();
    GlobalVars::getInstance()->survivorScoresCsv.write();

}

