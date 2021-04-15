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
     COLOR = vec4(UV.x, (UV.y*sin((((parabola(TIME,6.000000f))-((((7.000000f*cos(7.000000f))*sin(1.000000f))+sin((UV.x+TIME)))-(10.000000f/4.000000f)))+cos(1.500000f)))), (parabola((parabola((UV.y+UV.x),(impulse(((((10.000000f-6.000000f)+cos(1.000000f))+TIME)*sin((2.000000f/(TIME-TIME)))),(impulse(3.000000f,UV.x)))))),(1.000000f*cos(UV.x)))),1);
}