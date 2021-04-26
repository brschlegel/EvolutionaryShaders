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
     COLOR = vec4(((7.000000f+sin(9.000000f))*(UV.y/6.000000f)), (parabola(((4.000000f*sin((TIME/TIME)))+cos((10.000000f+((1.000000f*cos(8.000000f))+(TIME*sin(UV.y)))))),UV.x)), ((parabola(((UV.y*sin((1.000000f+sin(4.000000f))))+sin((TIME+sin(3.500000f)))),UV.x))*UV.y),1);
}