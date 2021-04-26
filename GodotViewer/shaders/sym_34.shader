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
     COLOR = vec4(UV.y, (parabola((parabola(((2.000000f-UV.y)*sin(((parabola(4.500000f,8.000000f))/7.000000f))),((TIME*sin(3.000000f))+UV.x))),UV.x)), (UV.y*UV.y),1);
}