#include <iostream>
#include <vector>
#include <string>
#include "../headers/Writer.h"
#include "../headers/Node.h"
#include "../headers/Tree.h"
#include "../headers/World.h"

using namespace std;

int main()
{
   

    Writer w;
   
    World world = World(0,10,50,20);
    vector<Shader*> shaders = world.evolve();
    cout<<"evolution done" <<endl;  
    for(Shader* s : shaders)
    {
        world.assignScore(s, FitnessFunction::NumVariable);
        cout << "score: " << s->score <<endl;
    }
    
    w.write("complexity", shaders);

}