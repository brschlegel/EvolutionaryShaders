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
     COLOR = vec4(2.000000f, ((9.000000f+sin(UV.y))*cos((((((parabola(((impulse((parabola(10.000000f,6.000000f)),8.000000f))*sin((UV.y+(7.000000f+cos(6.000000f))))),((4.000000f+4.000000f)-4.000000f)))*sin(TIME))+((2.000000f+cos((((10.000000f*cos(5.000000f))*sin(TIME))+(5.000000f+sin(UV.x)))))-UV.x))/TIME)*sin(UV.y)))), (((((((1.000000f*cos((UV.y*sin(9.000000f))))+cos((impulse((impulse(1.000000f,TIME)),1.500000f))))+0.750000f)*TIME)*cos(TIME))*sin(UV.x))*1.000000f),1);
}