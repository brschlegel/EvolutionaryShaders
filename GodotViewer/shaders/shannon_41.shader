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
     COLOR = vec4(UV.x, (((9.000000f*0.500000f)+UV.y)*cos(((TIME+sin(UV.x))*8.000000f))), (impulse(UV.y,(((2.500000f+sin(TIME))+sin((UV.x+cos((((7.000000f+sin(((1.000000f+sin(9.000000f))-5.000000f)))+cos((3.000000f*UV.y)))-UV.y)))))+sin(UV.x)))),1);
}