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
     COLOR = vec4(((3.000000f+cos(10.000000f))*sin(((((4.000000f+sin(6f))-(UV.x+cos(5.000000f)))*9f)*sin(UV.x)))), UV.y, (parabola(((impulse(1.000000f,10.000000f))-(parabola(8f,((9f/1.000000f)*cos(UV.x))))),(UV.x*sin(TIME)))),1);
}