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
     COLOR = vec4(UV.x, UV.y, ((parabola(((10.000000f+sin(3.000000f))+sin((TIME+sin(UV.y)))),UV.x))*UV.y),1);
}