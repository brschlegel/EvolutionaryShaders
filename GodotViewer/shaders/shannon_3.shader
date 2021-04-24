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
     COLOR = vec4(UV.y, (((6.000000f*cos(TIME))*sin(UV.y))-(6.000000f*sin(TIME))), (parabola(1.000000f,(parabola(2.000000f,10.000000f)))),1);
}