shader_type canvas_item;
void fragment(){
     COLOR = vec4((UV.x-7.000000f), ((TIME/(((((5.000000f*(3.500000f+3.000000f))/8f)+sin((UV.y+sin((4.000000f*cos(4f))))))*cos(TIME))-(9f+cos(10f))))*sin(((TIME+sin(((((10.000000f-(2f+sin(2.000000f)))-4.000000f)+8.000000f)*sin(((2.000000f+sin(4.000000f))*cos(TIME))))))*3.000000f))), UV.x,1);
}