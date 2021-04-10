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
     COLOR = vec4(UV.y, (parabola((impulse(3.500000f,9.000000f)),(impulse(UV.x,3.500000f)))), (3.000000f*cos(4.500000f)),1);
}