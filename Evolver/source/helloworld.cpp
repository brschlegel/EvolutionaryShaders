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
   
    World world = World(0,5,50,10);
    vector<Shader*> shaders = world.evolve();
    for(Shader* s : shaders)
    {
        cout << s->ToString() << endl;
    }
    
    w.write("complexity", shaders);
    



}