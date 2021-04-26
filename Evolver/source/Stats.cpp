#include "../headers/Stats.h"

Bin::Bin(float lower, float upper)
{
    this->lower = lower;
    this->upper = upper;
    count = 0;
}

void Bin::addValue(float value)
{
    
    count++;
    entries.push_back(value);
}


Histogram::Histogram(float mean, float binWidth, float min, float max)
{
    this->mean = mean;
    this->binWidth = binWidth;
    count = 0;
    
    int numBinsRight = ((max-mean)/binWidth) + 1;
    int numBinsLeft = (-(min - mean)/binWidth)  + 1;
    for(int i = 0; i < numBinsLeft; i++)
    {
        float binMin = -(numBinsLeft) * binWidth;
       
        Bin b = Bin(binMin + (i * binWidth), binMin + ((i + 1)* binWidth ) );
        bins.push_back(b);
    }
    for(int i = 0; i < numBinsRight; i++)
    {
        Bin b = Bin(i * binWidth, (i+1) * binWidth );
        bins.push_back(b);
    }
}

void Histogram::addBin(float lower, float upper)
{
    Bin b = Bin(lower, upper);
    bins.push_back(b);
}

void Histogram::addValue(float value)
{
    //naive add
    //Yeah yeah, I know this is messy but due dates are coming up sooooo
    int currentIndex = bins.size() /2 ; 
    int slider = ((int)((value - mean) / binWidth)) + 1;
    
    currentIndex += slider;
    if(value < mean)
        currentIndex--;
    if(currentIndex < 0)
        currentIndex = 0;
    if(currentIndex >= bins.size())
        currentIndex = bins.size() - 1;
    
  
    bins[currentIndex].addValue(value);

    count++;
}

float Normal::pdf(float x,float mean, float stdDev)
{
    return (1 / (stdDev* sqrtf(2 * 3.14159f)) * powf( 2.71828f, (-(x-mean) * (x-mean))/(2.0f * stdDev * stdDev) ));
}