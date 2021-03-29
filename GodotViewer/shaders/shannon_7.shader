shader_type canvas_item;
void fragment(){
     COLOR = vec4(UV.y, 2.000000f, (((((UV.y*sin(4.000000f))*sin(((2.000000f+sin(3.000000f))*sin(0.500000f))))*cos((UV.x*(((((3f/8f)-6f)+cos(UV.y))+(3.000000f+4.000000f))+(1.000000f-(1.250000f*sin(UV.x)))))))+cos(4.000000f))+cos((((((UV.x*sin(UV.x))*cos(1f))*cos((4.500000f*(UV.x+9.000000f))))*cos(UV.x))*cos(5.000000f)))),1);
}