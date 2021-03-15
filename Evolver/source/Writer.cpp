#include "../headers/Writer.h"
#include <iostream>
#include <fstream>

void Writer::write(std::string path, vector<Shader *> shaders)
{

    for (int i = 0; i < shaders.size(); i++)
    {
        string sPath = "../GodotViewer/shaders/" + path + "_" + to_string(i)+".shader";
        ofstream output;

        output.open(sPath);
        output << "shader_type canvas_item;" << endl;
        output << "void fragment(){" << endl;
        output << "     COLOR = vec4(";
        output << shaders[i]->redTree->toString() << ", ";
        output << shaders[i]->blueTree->toString() << ", ";
        output << shaders[i]->greenTree->toString() << ",1);" << endl;
        output << "}";
        output.close();
    }
}