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
     COLOR = vec4(6.000000f, (parabola(((5.000000f+sin(6.000000f))+cos(1.000000f)),UV.x)), ((parabola(((TIME*sin(3.500000f))+sin((TIME+sin((((7.000000f*3.000000f)*sin(UV.x))+sin((parabola((parabola(1.000000f,2.000000f)),(impulse(((TIME/(parabola(UV.x,10.000000f)))/(((UV.y+sin(UV.x))*sin(TIME))*(impulse(3.500000f,UV.x)))),UV.x)))))))))),UV.x))*UV.y),1);
}