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
     COLOR = vec4(((parabola(1.000000f,6.000000f))*cos(6.000000f)), (parabola((((impulse(3.500000f,UV.x))*sin((((2.000000f*2.000000f)*10.000000f)-2.000000f)))*cos((10.000000f-((8.000000f*sin(10.000000f))+sin((4.000000f+sin(9.000000f))))))),UV.x)), UV.y,1);
}