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
     COLOR = vec4((UV.x*sin(((1.500000f*8.000000f)+sin(((10.000000f+sin(2.000000f))*cos(((1.000000f+cos(9.000000f))+cos(TIME)))))))), UV.y, (parabola(((1.000000f*sin(2.000000f))-UV.y),(UV.x*sin(TIME)))),1);
}