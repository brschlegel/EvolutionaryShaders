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
   
    World world = World(20,20,50,20);
    vector<Shader*> shaders = world.evolve();
    cout<<"evolution done" <<endl;  
    for(Shader* s : shaders)
    {
        world.assignScore(s, FitnessFunction::Shannon);
        cout << "score: " << s->score <<endl;
    }
    
    w.write("shannon", shaders);

}