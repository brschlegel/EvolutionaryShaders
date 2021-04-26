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
     COLOR = vec4(UV.x, UV.x, ((parabola(((impulse(1.000000f,UV.x))+sin(((9.000000f*cos(3.000000f))+sin((4.000000f+sin((UV.y-UV.x))))))),UV.x))*UV.y),1);
}