#include "../headers/Writer.h"
#include <iostream>
#include <fstream>


void Writer::write(std::string path){
    ofstream shader;
    path = "shaders/" + path;
    shader.open(path);
    shader << "shader_type canvas_item;" << endl;
    shader << "void fragment(){" << endl;
    shader << "     COLOR = vec4(UV,cos(TIME) + .5, 1.0);" << endl;
    shader << "}";
    shader.close();
}