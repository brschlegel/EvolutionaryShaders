shader_type canvas_item;
void fragment(){
     COLOR = vec4(((UV.x+cos((10.000000f*cos(2.000000f))))*((((3f-(2f/UV.x))+UV.x)+sin(TIME))*sin((((7f+(10f*cos(UV.x)))*cos(TIME))+((1.000000f*sin((TIME*cos(7f))))*cos(UV.x)))))), ((((9.000000f+sin(UV.x))-(((9.000000f*cos(UV.x))+sin(8.000000f))/8f))+(((UV.x*cos((7f*7f)))-((4.000000f+2.000000f)+(6f*cos(TIME))))*cos((10f/((UV.y-4f)+cos(UV.x))))))*cos((6f+sin(((UV.x*((5f+0.500000f)-TIME))+UV.x))))), ((TIME+cos(UV.y))-(((8.000000f*UV.y)+cos((((TIME/TIME)+cos((((10.000000f*sin(4.000000f))/4.000000f)/(9.000000f+sin((0.500000f-8.000000f))))))*sin(5.000000f))))*(UV.y+(UV.x+sin((TIME+(TIME+cos(UV.x)))))))),1);
}