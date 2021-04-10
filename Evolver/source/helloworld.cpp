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
    World world = World(20,10,20,10);
    vector<Shader*> shaders = world.evolve();
    cout<<"evolution done" <<endl;  
    for(Shader* s : shaders)
    {
        world.assignScore(s, FitnessFunction::Shannon);
        cout << "score: " << s->score <<endl;
    }
    
    w.write("shannon", shaders);

}

