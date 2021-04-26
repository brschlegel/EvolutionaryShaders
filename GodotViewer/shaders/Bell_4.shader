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
     COLOR = vec4(UV.x, ((9.000000f+sin(8.000000f))*cos(((((UV.x*sin(TIME))+(2.000000f-UV.x))+sin((((10.000000f+sin(2.000000f))*sin(UV.x))*cos(6.000000f))))*sin(2.000000f)))), (((6.000000f*cos(TIME))*sin((8.000000f+sin(5.000000f))))/1.000000f),1);
}