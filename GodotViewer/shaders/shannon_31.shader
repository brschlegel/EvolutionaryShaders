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
     COLOR = vec4(UV.x, (((3.000000f+(1.000000f/(2.000000f/3.000000f)))+(8.000000f+sin(TIME)))*cos(((TIME+UV.y)*8.000000f))), (impulse(UV.y,(((5.000000f+sin((4.000000f+cos((8.000000f*sin(10.000000f))))))+sin((2.500000f+cos((UV.x-(impulse((10.000000f*4.000000f),6.000000f)))))))+sin((UV.y*UV.x))))),1);
}