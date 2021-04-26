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
     COLOR = vec4((10.000000f+sin((2.000000f/5.000000f))), (parabola((parabola((UV.x*(1.000000f/4.000000f)),(1.500000f+UV.x))),UV.x)), ((parabola(((TIME*sin(UV.y))*sin((TIME+sin((((7.000000f*6.000000f)*sin(UV.x))+sin((UV.y-(impulse((((5.000000f+cos(7.000000f))/(parabola(UV.x,(6.000000f*4.000000f))))/(7.000000f*(impulse(3.500000f,UV.x)))),(2.000000f*sin(5.000000f))))))))))),UV.x))*UV.y),1);
}