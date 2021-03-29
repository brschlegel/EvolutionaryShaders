#include "../headers/GlobalVars.h"
#include "../headers/Shader.h"
#include <vector>
#include <algorithm>

enum FitnessFunction
{
    NumVariable,
    Shannon
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
    void crossover();
    vector<Shader*> getSurvivors();

};