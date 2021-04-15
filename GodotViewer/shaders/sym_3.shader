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
     COLOR = vec4(UV.x, (0.500000f+cos(0.250000f)), (4.000000f+sin((1.000000f+cos(8.000000f)))),1);
}