#include <vector>
#include <algorithm>
using namespace std;
class Bin;
class Bin{
public:
    int count;
    vector<float> entries;
    float upper;
    float lower;
    Bin(float lower, float upper);
    void addValue(float value);
    bool operator<(const Bin &other);
};

struct BinComparison{
    bool  const operator()(Bin* lhs, Bin* rhs) const
    {
        return (*lhs) < (*rhs);
    }
};

class Histogram{
public:
    float mean;
    float binWidth;
    int count;
    vector<Bin> bins;
    Histogram(float mean, float binWidth, float min, float max);
    void addBin(float lower, float upper);
    void addValue(float value);

};

static class Normal{
public:
    static float pdf(float x, float mean, float stdDev);
};