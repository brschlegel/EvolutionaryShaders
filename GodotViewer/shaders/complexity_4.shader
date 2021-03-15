shader_type canvas_item;
void fragment(){
     COLOR = vec4(((UV.x+cos((3.000000f*cos((10.000000f*sin(7.000000f))))))*(1.000000f*sin((((7f/(10f*cos(UV.x)))*cos(TIME))*cos(((TIME+(TIME*cos(7f)))*cos(UV.x))))))), ((((9.000000f+sin(UV.x))-((UV.x+sin((7.000000f*9.000000f)))/(4.000000f/0.500000f)))+((7.000000f-(10.000000f+(6f*cos(2f))))*cos((10f/((UV.y-4f)+cos(UV.x))))))*cos((6f+sin(((UV.x+cos(2.000000f))+UV.x))))), ((TIME+cos(UV.y))-(((8.000000f*UV.y)+cos((((TIME/(UV.x+cos(UV.x)))+cos((UV.y/(UV.x+sin(8.000000f)))))*sin(UV.y))))*(UV.y+(TIME+sin((TIME+(TIME+sin((UV.x+sin(UV.y)))))))))),1);
}