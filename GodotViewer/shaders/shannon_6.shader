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
     COLOR = vec4(((impulse(TIME,0.500000f))+cos(1.500000f)), UV.y, (4.000000f/3.500000f),1);
}