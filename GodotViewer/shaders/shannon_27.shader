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
     COLOR = vec4(UV.x, (((1.500000f-(UV.y*(0.500000f/UV.y)))-(8.000000f-(((impulse(3.000000f,5.000000f))*2.000000f)*sin((6.000000f*sin(TIME))))))*cos(((TIME+UV.x)*8.000000f))), (impulse(UV.y,(UV.x+sin(TIME)))),1);
}