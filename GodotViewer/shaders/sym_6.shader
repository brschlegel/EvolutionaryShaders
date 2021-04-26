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
     COLOR = vec4(2.000000f, (parabola((parabola(UV.x,8.000000f)),UV.x)), ((parabola(((1.000000f*sin(UV.x))+sin((3.000000f+sin(UV.x)))),UV.x))*UV.y),1);
}