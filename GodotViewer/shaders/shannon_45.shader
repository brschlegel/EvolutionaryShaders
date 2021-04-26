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
     COLOR = vec4(UV.x, ((4.000000f+((TIME+cos((UV.y-UV.x)))-((UV.y+sin((4.000000f+UV.y)))+((impulse(TIME,(4.000000f*cos(8.000000f))))+UV.y))))*cos(((TIME-UV.x)*8.000000f))), (impulse(UV.y,(((UV.y+sin(UV.x))+sin(((TIME*(UV.y-UV.x))*UV.y)))+sin(TIME)))),1);
}