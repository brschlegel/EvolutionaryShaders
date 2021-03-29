shader_type canvas_item;
void fragment(){
     COLOR = vec4((2f*(((TIME*UV.y)+(2.000000f/1.000000f))-5f)), (6f-((((UV.x/1f)/((9f*sin(UV.y))*sin((3f*cos((7f+sin(UV.y)))))))-(TIME/(5f+sin((4f/3f)))))/((((UV.x+sin((9.000000f*sin(3.000000f))))*sin((4f/2f)))+((UV.y*5f)+cos((7f+sin(1f)))))*cos(2f)))), 6.000000f,1);
}