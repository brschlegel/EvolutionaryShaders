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
     COLOR = vec4(UV.y, ((((((UV.y+sin((4.500000f+sin((UV.y-8.000000f)))))+cos(9.000000f))+sin((4.000000f/UV.y)))*cos(5.000000f))+sin(1.000000f))+(3.000000f*sin(TIME))), UV.x,1);
}