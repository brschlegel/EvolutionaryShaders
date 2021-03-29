shader_type canvas_item;
void fragment(){
     COLOR = vec4(3.000000f, (UV.x*sin((3.000000f/(1.000000f+(UV.x+(4.000000f+cos(3.000000f))))))), (((1.500000f*cos((1.000000f*UV.y)))*cos(((((UV.x+cos(1.000000f))*cos(5.000000f))+(1.500000f-UV.y))*5.000000f)))+cos(1.000000f)),1);
}