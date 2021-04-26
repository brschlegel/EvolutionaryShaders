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
     COLOR = vec4(4.000000f, ((9.000000f+sin(8.000000f))*cos((((((parabola((((UV.x*cos(9.000000f))+cos(UV.y))*(10.000000f+8.000000f)),((8.000000f+4.000000f)-4.000000f)))*sin(TIME))+(impulse(3.000000f,UV.x)))+sin((10.000000f/9.000000f)))*sin(UV.y)))), (((((4.000000f+UV.y)*(5.000000f+4.000000f))*cos(TIME))*sin((9.000000f*cos(3.500000f))))*cos(((impulse(9.000000f,TIME))-UV.x))),1);
}