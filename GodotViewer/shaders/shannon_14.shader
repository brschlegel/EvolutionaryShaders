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
     COLOR = vec4(UV.y, (((2.500000f+UV.x)+TIME)*cos(((TIME-4.500000f)*8.000000f))), (impulse(UV.x,(((UV.y+sin((4.000000f+3.000000f)))+sin(((TIME/(parabola(UV.x,UV.x)))*((((((UV.y+(impulse((1.500000f*sin(((5.000000f*7.000000f)*sin(TIME)))),1.000000f)))+sin((8.000000f*UV.x)))+sin(TIME))*0.500000f)*cos(3.000000f))*cos(TIME)))))+sin(1.500000f)))),1);
}