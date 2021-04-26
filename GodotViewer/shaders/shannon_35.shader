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
     COLOR = vec4(UV.x, (((UV.x*(parabola(1.000000f,UV.x)))+((parabola(2.500000f,UV.y))+cos(((9.000000f/(((parabola(UV.y,7.000000f))*cos(2.000000f))*sin(5.000000f)))+(UV.x*UV.y)))))*cos(((TIME+UV.x)*8.000000f))), (impulse(UV.y,(((UV.y+sin(UV.y))+sin((TIME*((UV.x*TIME)*cos(UV.y)))))+sin((UV.y*1.000000f))))),1);
}