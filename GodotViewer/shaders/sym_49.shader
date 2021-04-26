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
     COLOR = vec4(UV.y, (parabola((parabola(((2.000000f-UV.y)*sin((TIME+cos(UV.x)))),(((impulse(1.750000f,TIME))*sin(3.000000f))+UV.x))),UV.x)), ((parabola((TIME+sin(UV.y)),UV.x))*UV.y),1);
}