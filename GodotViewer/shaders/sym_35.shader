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
     COLOR = vec4(((2.000000f*cos(1.000000f))-((4.000000f+sin(8.000000f))*cos((TIME/UV.x)))), (parabola((parabola((parabola((3.000000f/UV.y),UV.y)),(10.000000f+UV.y))),UV.x)), ((parabola(((6.000000f+sin(TIME))+sin(((1.000000f*cos(((parabola(2.500000f,4.000000f))-(8.000000f/8.000000f))))*(((10.000000f-9.000000f)+sin(1.000000f))+sin((7.000000f*TIME)))))),UV.x))*UV.y),1);
}