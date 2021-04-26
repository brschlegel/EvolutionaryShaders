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
     COLOR = vec4((1.500000f*(1.000000f/0.500000f)), (parabola(10.000000f,UV.x)), ((parabola(UV.y,UV.x))*UV.y),1);
}