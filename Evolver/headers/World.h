#include "../headers/GlobalVars.h"
#include "../headers/Shader.h"
#include <vector>
#include <algorithm>
#include <chrono>
#include <array>

enum FitnessFunction
{
    NumVariable,
    Shannon,
    Symmetry
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
    chrono::time_point<chrono::steady_clock> startTime;
    vector<Shader*> shaders;
    double getElapsedSeconds();
    World(int numRegions, int numSurvivors, int populationSize, int numGenerations);
    void assignScore(Shader* shader, FitnessFunction fit);
    void createNewGeneration();
    vector<Shader*> evolve();
    void crossover();
    vector<Shader*> getSurvivors();
    float shannonScore(Shader* shader);
    float symScore(Shader* shader);
    int getSim(Shader* shader, int timeStep);
};