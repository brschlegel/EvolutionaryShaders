#include "../headers/Color.h"

Color::Color(float red, float blue, float green)
{
    this->red = red;
    this->blue = blue;
    this->green = green;
}

Color::Color()
{
    this->red = 0;
    this->blue = 0;
    this->green = 0;
}