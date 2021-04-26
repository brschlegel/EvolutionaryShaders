#include "../headers/World.h"

void World::assignScore(Shader *shader, FitnessFunction fit)
{
    float num = 0;
    for (int i = 0; i < GlobalVars::getInstance()->numTimeStep; i++)
    {
        shader->calculateColorsAtTimeStep(i);
    }
    num += shader->averageDiffOverTime() * GlobalVars::getInstance()->numTimeStep * 2;
    GlobalVars::getInstance()->timeDiffCsv.addValue(num);
    switch (fit)
    {
    case FitnessFunction::NumVariable:
        num += shader->redTree->getVarLeavesR(shader->redTree->root).size();
        num += shader->blueTree->getVarLeavesR(shader->blueTree->root).size();
        num += shader->greenTree->getVarLeavesR(shader->greenTree->root).size();
        break;
    case FitnessFunction::Shannon:
            num += shannonScore(shader);
        break;
    case FitnessFunction::Symmetry:
            num += symScore(shader);
        break;
    case FitnessFunction::Benford:
        num += benfordScore(shader);
        break;
    }
    GlobalVars::getInstance()->scoresCsv.addValue(num);
    shader->score = num;
}

vector<Shader *> World::getSurvivors()
{

    sort(shaders.begin(), shaders.end(), ScoreComparison());
    for (int i = shaders.size() - numSurvivors - 1; i > -1; i--)
    {
        shaders[i]->unload();
        shaders.erase(shaders.begin() + i);
    }
    vector<Shader*> surv =  vector<Shader *>(shaders.begin(), shaders.begin() + numSurvivors);
    for(int i = 0; i < surv.size(); i++)
    {
        GlobalVars::getInstance()->survivorScoresCsv.addValue(surv[i]->score);
    }
    return surv;
}

void World::createNewGeneration()
{
    int numPerSurvivor = populationSize / numSurvivors;
    vector<Shader *> newGen;
    crossover();
    for (Shader *s : shaders)
    {
        for (int i = 0; i < numPerSurvivor; i++)
        {
            Shader *newShader = new Shader(*s);
            newShader->NaiveMutate();
            newGen.push_back(newShader);
        }
    }
    shaders = newGen;
}

vector<Shader *> World::evolve(FitnessFunction fit)
{
    for (int i = 0; i < numGenerations; i++)
    {
        threads.clear();
        int numThreads = GlobalVars::getInstance()->numThreads;
        int numShaders = shaders.size();
        int numPerThread = numShaders / numThreads;
        int start = 0;
        for(int j= 0; j < numThreads - 1; j++)
        {
            std::thread th(&World::assignScoreGroup,this,start, start + numPerThread, fit);
            threads.push_back(std::move(th));
      
            start += numPerThread;
          
        }
        thread thEnd(&World::assignScoreGroup,this,start, numShaders, fit);
        threads.push_back(std::move(thEnd));

        for (int j = 0; j < threads.size(); j++)
        {
           threads[j].join();
        }
        shaders = getSurvivors();
        createNewGeneration();
        float time = getElapsedSeconds();
        GlobalVars::getInstance()->timeCsv.addValue(time);
        cout << "generation " << i << " done     " << time << endl;
        startTime = chrono::steady_clock::now();
    }

    threads.clear();
        int numThreads = GlobalVars::getInstance()->numThreads;
        int numShaders = shaders.size();
        int numPerThread = numShaders / numThreads;
        int start = 0;
        for(int j= 0; j < numThreads - 1; j++)
        {
            std::thread th(&World::assignScoreGroup,this,start, start + numPerThread, fit);
            threads.push_back(std::move(th));
      
            start += numPerThread;
          
        }
        thread thEnd(&World::assignScoreGroup,this,start, numShaders, fit);
        threads.push_back(std::move(thEnd));

        for (int j = 0; j < threads.size(); j++)
        {
           threads[j].join();
        }
    return getSurvivors();
}

//this method is a little ugly, and very verbose
// I wanna make sure I do things right here, as well as try to make it effecient, hence all the naming and extra variables
void World::crossover()
{
    vector<Shader *> crossover;
    int size = shaders.size();
    for (int i = 0; i < size; i++)
    {
        int random = rand() % shaders.size();
        crossover.push_back(shaders[random]);
        shaders.erase(shaders.begin() + random);
    }
    //now order of crossover is randomized
    for (int i = 0; i < size / 2; i++)
    {
        Shader *first = crossover[2 * i];
        Shader *second = crossover[2 * i + 1];
        for (int j = 0; j < 3; j++)
        {
            Tree *firstTree = first->getTreeByIndex(j);
            vector<Node *> firstOperatorList = firstTree->getOperatorNodes(firstTree->root);
            if (firstOperatorList.size() <= 0)
                break;
            Node *firstNode = firstOperatorList[(rand() % firstOperatorList.size())];
            Node *firstSwitchNode;
            bool firstLeft = rand() % 2 == 0;
            if (firstLeft)
            {
                firstSwitchNode = firstNode->left;
            }
            else
            {
                firstSwitchNode = firstNode->right;
            }

            Tree *secondTree = second->getTreeByIndex(j);
            vector<Node *> secondOperatorList = secondTree->getOperatorNodes(secondTree->root);
            if (secondOperatorList.size() <= 0)
                break;
            Node *secondNode = secondOperatorList[rand() % secondOperatorList.size()];
            Node *secondSwitchNode;
            bool secondLeft = rand() % 2 == 0;
            if (secondLeft)
            {
                secondSwitchNode = secondNode->left;
            }
            else
            {
                secondSwitchNode = secondNode->right;
            }

            //actually do the crossover
            if (firstLeft)
                firstNode->left = secondSwitchNode;
            else
                firstNode->right = secondSwitchNode;
            if (secondLeft)
                secondNode->left = firstSwitchNode;
            else
                secondNode->right = firstSwitchNode;
        }
    }

    shaders = crossover;
}

double World::getElapsedSeconds()
{
    auto currentTime = std::chrono::steady_clock::now();
    return chrono::duration_cast<chrono::seconds>(currentTime - startTime).count();
}

World::World(int numRegions, int numSurvivors, int populationSize, int numGenerations)
{
    this->numRegions = numRegions;
    this->numSurvivors = numSurvivors;
    this->populationSize = populationSize;
    this->numGenerations = numGenerations;
    this->startTime = chrono::steady_clock::now();
    for (int i = 0; i < populationSize; i++)
    {
        shaders.push_back(new Shader());
    }
}

void World::assignScoreGroup(int start, int end, FitnessFunction fit)
{
    for(int i = 0; i < (end - start); i++ )
    {
        assignScore(shaders[i + start], fit);
    }
}

float World::shannonScore(Shader *shader)
{
    float num = 0;
    for (int i = 0; i < GlobalVars::getInstance()->numTimeStep; i++)
    {
        int histogram[256];
        for (int i = 0; i < 256; i++)
        {
            histogram[i] = 0;
        }
        for (int j = 0; j < GlobalVars::getInstance()->numRegions; j++)
        {
            for (int k = 0; k < GlobalVars::getInstance()->numRegions; k++)
            {
                float sum = 0;
                sum += shader->colorsByTimeStep[i][j][k].red;
                sum += shader->colorsByTimeStep[i][j][k].blue;
                sum += shader->colorsByTimeStep[i][j][k].green;
                sum /= 3;
                sum *= 255;
                histogram[(int)sum]++;
            }
        }
        float total = GlobalVars::getInstance()->numRegions * GlobalVars::getInstance()->numRegions;
        float score = 0;
        for (int i = 0; i < 256; i++)
        {
            float pxi = (float)histogram[i] / total;
            if (pxi != 0)
                score += pxi * log10(pxi);
        }

        num += -score;
    }
    return num;
}

float World::symScore(Shader* shader)
{
    float num = 0;
    for( int i = 0; i < GlobalVars::getInstance()->numTimeStep; i++)
    {
        num += getSim(shader, i);
    }
    num *= 10;
    float liveliness = shannonScore(shader);
    num += liveliness * liveliness;
    return num;
}

int World::getSim(Shader* shader, int timeStep)
{
    float sim  =0;
    int size = GlobalVars::getInstance()->numRegions/2;
    float sum = 0;
    //Vertical Sym
    for(int y = 0; y < size * 2; y++)
    {
        for(int i = 0; i < size; i++)
        {
            Color a = shader->colorsByTimeStep[timeStep][i][y];
            Color b = shader->colorsByTimeStep[timeStep][(size * 2)- (1 + i)][y];
            if(abs(a.calculateGreyScale() - b.calculateGreyScale()) < GlobalVars::getInstance()->simThreshold)
            {
                sum += 1;
            }
            else{
                sim = 0;
            }
        }
    }

    sim += sum / (size * size);
    
    //Horizontal Sym
    sum = 0;
    for(int x = 0; x < size * 2; x++)
    {
        for(int i = 0; i < size; i++)
        {
            Color a = shader->colorsByTimeStep[timeStep][x][i];
            Color b = shader->colorsByTimeStep[timeStep][x][(size * 2)- (1 + i)];
            if(abs(a.calculateGreyScale() - b.calculateGreyScale()) < GlobalVars::getInstance()->simThreshold)
            {
                sum += 1;
            }
        }
    }
    sim += sum / (size * size);

    //Diagonal sim
    sum = 0;
    for(int j = 0; j < size ; j++)
    {
        for(int i = 0; i < size; i++)
        {
            Color a = shader->colorsByTimeStep[timeStep][j][i];
            Color b = shader->colorsByTimeStep[timeStep][(size * 2)- (1 + j)][(size * 2)- (1 + i)];
            if(abs(a.calculateGreyScale() - b.calculateGreyScale()) < GlobalVars::getInstance()->simThreshold)
            {
                sum += 1;
            }
        }
    }
    sim += sum / (size * size);

    sum = 0;
    for(int j = 0; j < size ; j++)
    {
        for(int i = 0; i < size; i++)
        {
            Color a = shader->colorsByTimeStep[timeStep][j][i + size];
            Color b = shader->colorsByTimeStep[timeStep][(size * 2)- (1 + j)][(size )- (1 + i)];
            if(abs(a.calculateGreyScale() - b.calculateGreyScale()) < GlobalVars::getInstance()->simThreshold)
            {
                sum += 1;
            }
        }
    }

    sim += sum / (size * size);
    sim /= 4;
    return sim;
}

float World::bellCurveScore(Shader* shader)
{
    int numRegions = GlobalVars::getInstance()->numRegions;
    float total = 0;
    for(int timeStep = 0; timeStep < GlobalVars::getInstance()->numTimeStep; timeStep++)
    {
        vector<vector<float>> response = getResponse(shader, timeStep);
        float sum = 0;
        float sqrSum = 0;
        float min = 9999999;
        float max = -9999999;
        
        for(int i = 0; i < response.size(); i++)
        {
            for(int j = 0; j < response[i].size(); j++)
            {
                if(response[i][j] > max)
                {
                    max = response[i][j];
                }

                if(response[i][j] < min)
                {
                    min = response[i][j];
                }
                sum += response[i][j];
                sqrSum += response[i][j] * response[i][j];
            }
        }
        //masking threshold
        //if sum isnt greater than this, just give it a score of zero
        if(sum < 0.0001f)
        {
            continue;
        }
        float mean = sqrSum / sum;
       
        float stdSum = 0;
        for(int i = 0; i < response.size(); i++)
        {
            for(int j = 0; j < response[i].size(); j++)
            {
               stdSum += response[i][j] * powf(response[i][j] - mean, 2);
            }
        }
        float stdDev = sqrtf(stdSum / sum);
        //another masking feature
        if(stdDev == 0)
        {
            continue;
        }
        Histogram h = Histogram(mean, stdDev/100.0f, min, max);
        for(int i = 0; i < response.size(); i++)
        {
            for(int j = 0; j < response[i].size(); j++)
            {
               h.addValue(response[i][j]);
            }
        }
        float finalSum = 0;
        for(int i = 0; i < h.bins.size(); i++)
        {
            float p = h.bins[i].entries.size() / h.count;
            float q = Normal::pdf(h.bins[i].lower + h.bins[i].upper / 2, 0, stdDev);
            finalSum += p * log10f(p/q);
        }
        total +=  1000 * finalSum;
    }
    return total;
}

vector<vector<float>> World::getResponse(Shader* shader, int timeStep)
{
    
    int numRegions = GlobalVars::getInstance()->numRegions;

    vector<vector<float>> response(numRegions - 1, vector<float>(numRegions -1));
    for(int i = 0; i < numRegions -1; i++)
    {
        for(int j = 0; j < numRegions -1; j++)
        {
            response[i][j] += powf(shader->colorsByTimeStep[timeStep][i][j].red - shader->colorsByTimeStep[timeStep][i+1][j+1].red,2) + powf(shader->colorsByTimeStep[timeStep][i+1][j].red - shader->colorsByTimeStep[timeStep][i][j+1].red,2);
            response[i][j] += powf(shader->colorsByTimeStep[timeStep][i][j].blue - shader->colorsByTimeStep[timeStep][i+1][j+1].blue,2) + powf(shader->colorsByTimeStep[timeStep][i+1][j].blue - shader->colorsByTimeStep[timeStep][i][j+1].blue,2);
            response[i][j] += powf(shader->colorsByTimeStep[timeStep][i][j].green - shader->colorsByTimeStep[timeStep][i+1][j+1].green,2) + powf(shader->colorsByTimeStep[timeStep][i+1][j].green - shader->colorsByTimeStep[timeStep][i][j+1].green,2);

            response[i][j] = sqrtf(response[i][j])/ 2.0f;
        }
    }

    return response;
}

float World::benfordScore(Shader* shader)
{
    int numRegions = GlobalVars::getInstance()->numRegions;
    float score = 0;
    float benford[9] = {.301,.176,.125,.097,.079,.067,.058,.051,.046};
    float benfordP = 3;
    float bMax = 0;
    bMax += powf((1 - benford[0]), benfordP);
    for(int i = 1; i < 9;i++)
    {
        bMax += powf( benford[i], benfordP);
    }

    for(int timeStep = 0; timeStep < GlobalVars::getInstance()->numTimeStep; timeStep++)
    {
        float dif = 0;
        int histogram[9];
        for(int i = 0; i < 9; i++)
        {
            histogram[i] = 0;
        }
        for(int i = 0; i < numRegions; i++ )
        {
            for(int j = 0; j < numRegions; j++)
            {
                int index = (int)(shader->colorsByTimeStep[timeStep][i][j].calculateGreyScale() * 9);
                histogram[index]++;
            }
        }
        for(int i = 0; i < 9;i++)
        {
            dif += powf((histogram[i]/ (numRegions * numRegions)) - benford[i],benfordP);
        }
        score += (bMax - dif) / bMax;
    }
    return score;
}