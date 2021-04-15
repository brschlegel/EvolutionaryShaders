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
     COLOR = vec4((10.000000f+cos((1.000000f/4.000000f))), UV.x, ((impulse((7.000000f*cos(5.000000f)),((3f+((2f+cos(2f))*sin(TIME)))*((1.000000f+6.000000f)+cos((6f-UV.x))))))/4.000000f),1);
}