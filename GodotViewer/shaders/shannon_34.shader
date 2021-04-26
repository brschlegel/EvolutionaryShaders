shader_type canvas_item;
float impulse( float x, float k )
{
float h = k*x;
return h*exp(1.0-h);
}
float parabola( float x, float k )
{
return pow( 4.0*x*(1.0-x), k );
}
void fragment(){
     COLOR = vec4(TIME, ((4.000000f+((TIME+cos((UV.y-2.000000f)))-((UV.y+sin((4.000000f+UV.y)))+((impulse(TIME,((0.500000f*1.500000f)*cos(UV.x))))+UV.y))))*cos(((TIME-(impulse(UV.x,UV.x)))*8.000000f))), (impulse(2.000000f,(((UV.y+sin(UV.x))+sin(((TIME*(UV.y-(2.000000f+cos(7.000000f))))*UV.y)))+sin(1.500000f)))),1);
}