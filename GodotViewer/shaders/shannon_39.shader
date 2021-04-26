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
     COLOR = vec4(UV.x, (((1.000000f+10.000000f)+(8.000000f-(UV.y*sin(3.500000f))))*cos(((TIME+UV.x)*8.000000f))), (impulse(UV.y,(((5.000000f+sin(TIME))+sin((UV.x+cos((((6.000000f+sin((10.000000f+sin(10.000000f))))+cos(((7.000000f+cos(9.000000f))+cos(UV.y))))-UV.y)))))+sin(UV.x)))),1);
}