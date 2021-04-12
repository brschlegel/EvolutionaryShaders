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
    World world = World(40,50,400,100);
    vector<Shader*> shaders = world.evolve(FitnessFunction::Symmetry);
    cout<<"evolution done" <<endl;  
    for(Shader* s : shaders)
    {
        world.assignScore(s, FitnessFunction::Symmetry);
        cout << "score: " << s->score <<endl;
    }
    
    w.write("sym", shaders);

}

