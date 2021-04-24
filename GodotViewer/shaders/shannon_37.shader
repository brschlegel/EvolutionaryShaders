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
     COLOR = vec4(UV.y, (((UV.x*cos(TIME))*sin(((TIME+cos((4.000000f*3.000000f)))/((0.500000f*cos((0.500000f*sin(UV.y))))-UV.x))))-((parabola(9.000000f,9.000000f))*sin(TIME))), UV.x,1);
}