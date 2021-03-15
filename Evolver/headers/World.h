#include "../headers/GlobalVars.h"
#include "../headers/Shader.h"
#include <vector>
#include <algorithm>

enum FitnessFunction
{
    NumVariable
};

struct ScoreComparison
{
    bool const operator()(Shader* lhs, Shader* rhs) const
    {
        return (*lhs) < (*rhs);
    }

};

class World
{
public:
    int numRegions;
    int numSurvivors;
    int populationSize;
    int numGenerations;
    vector<Shader*> shaders;
    World(int numRegions, int numSurvivors, int populationSize, int numGenerations);
    void assignScore(Shader* shader, FitnessFunction fit);
    void createNewGeneration();
    vector<Shader*> evolve();
    vector<Shader*> getSurvivors();

};