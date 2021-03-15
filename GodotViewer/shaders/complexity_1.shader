shader_type canvas_item;
void fragment(){
     COLOR = vec4(UV.y, (((UV.x-(((4.500000f*cos(UV.x))+sin(8.000000f))/8f))+(((UV.x*cos((7f*7f)))-(10.000000f+(6f*cos(TIME))))*cos((TIME/((UV.y-4f)+cos(UV.x))))))*cos((6f+sin(((UV.x+cos(((5f*sin(0.500000f))-4.000000f)))+UV.x))))), ((TIME+cos(UV.y))-(((8.000000f+cos(UV.y))+cos(4.000000f))*(UV.y+(UV.x+sin((TIME+((1.000000f*6.000000f)+cos(UV.x)))))))),1);
}