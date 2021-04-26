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
     COLOR = vec4(TIME, (((3.000000f*sin(6.000000f))+(TIME-(UV.y*sin(3.500000f))))*cos(((TIME+UV.x)*8.000000f))), (impulse(UV.y,(((5.000000f+sin(TIME))+sin((UV.x+cos((((6.000000f+sin(1.000000f))+cos(TIME))-UV.y)))))+sin(UV.x)))),1);
}