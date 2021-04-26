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
     COLOR = vec4((parabola(9.000000f,6.000000f)), (parabola(TIME,UV.x)), ((parabola(((2.000000f-1.000000f)+sin((6.000000f-1.000000f))),UV.x))*UV.y),1);
}