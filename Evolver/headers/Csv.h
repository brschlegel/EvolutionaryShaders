#pragma once

#include <fstream>
#include <iostream>
#include <vector>
#include <string>

using namespace std;
class Csv{
public: 
    Csv(int numRows, int numColumns, std::string name);
    Csv();
    vector<vector<float>> entries;
    string name;
    int currentRow;
    int numColumns;
    void write();
    void addValue(float value);
};