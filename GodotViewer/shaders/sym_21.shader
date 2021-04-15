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
     COLOR = vec4(UV.x, (UV.y*sin((((parabola((((1.000000f*sin(3.000000f))/1.000000f)*((3.000000f/((2.000000f*cos(3.500000f))+cos(((impulse(0.500000f,5.000000f))+6.000000f))))*sin(2.000000f))),6.000000f))-(((1.250000f*sin((6.000000f+sin(9.000000f))))+sin(0.500000f))-UV.y))+cos((1.000000f+cos(3.000000f)))))), (parabola((parabola(UV.y,(((impulse((9.000000f+cos(6.000000f)),((1.000000f+sin((3.000000f*(2.000000f-1.000000f))))+TIME)))*sin(UV.y))*2.000000f))),(1.000000f*cos(UV.x)))),1);
}