#include "../headers/Csv.h"

Csv::Csv(int numRows, int numColumns, string name)
{
    //entries.reserve(numRows);
    for(int i = 0; i < numRows; i++)
    {
        vector<float> row;
        //row.reserve(numColumns);
        entries.push_back(row);
    }
    this->name = name;
    this->numColumns = numColumns;
    currentRow = 0;
}
//Default
Csv::Csv()
{

}
void Csv::write()
{
    string path = "LogFiles/" + name + "_" + to_string(entries.size()) + "_" + to_string(entries[0].size()) + ".csv";
    ofstream output;
    output.open(path);
    for(int i = 0; i < entries.size(); i++)
    {
        for(int j = 0; j < entries[i].size(); j++)
        {
            output << entries[i][j] << ",";
        }
        output <<endl;
    }
    output.close();
}

void Csv::addValue(float value)
{
    if(entries[currentRow].size() >= numColumns)
    {
        currentRow++;
    }
    entries[currentRow].push_back(value);
}