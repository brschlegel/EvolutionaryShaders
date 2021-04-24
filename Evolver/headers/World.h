#include "../headers/GlobalVars.h"
#include "../headers/Shader.h"
#include <vector>
#include <algorithm>
#include <chrono>
#include <array>
#include <thread>
#include "../headers/Stats.h"

using namespace std;
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
    vector<thread> threads;
    double getElapsedSeconds();
    World(int numRegions, int numSurvivors, int populationSize, int numGenerations);
    void assignScore(Shader* shader, FitnessFunction fit);
    void createNewGeneration();
    vector<Shader*> evolve(FitnessFunction fit);
    void crossover();
    vector<Shader*> getSurvivors();
    float shannonScore(Shader* shader);
    float symScore(Shader* shader);
    float bellCurveScore(Shader* shader);
    vector<vector<float>> getResponse(Shader* shader, int timeStep);
    int getSim(Shader* shader, int timeStep);
    void assignScoreGroup(int start, int end, FitnessFunction fit);
};