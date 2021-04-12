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
     COLOR = vec4(UV.y, ((UV.x/((4.500000f+sin((impulse(((4.500000f+6.000000f)-5.000000f),((3.500000f/(parabola(((2.000000f-(9.000000f+sin(3.000000f)))*(4.000000f*UV.x)),5.000000f)))*5.000000f)))))+((4.000000f-6.000000f)/(((9.000000f+sin(10.000000f))+sin(1.000000f))+(((1.250000f+sin(((9.000000f*sin(8.000000f))-2.000000f)))-(impulse(UV.y,4.500000f)))-2.000000f)))))+sin(UV.y)), 8.000000f,1);
}