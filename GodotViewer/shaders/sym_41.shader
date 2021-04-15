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
     COLOR = vec4(UV.x, (UV.y*sin((((parabola(((parabola(3.000000f,(9.000000f/1.000000f)))*(TIME*cos((8.000000f*cos(UV.x))))),6.000000f))-UV.y)+cos((((8.000000f*1.000000f)*sin((1.000000f*cos(5.000000f))))*sin(((3.000000f-(1.000000f-10.000000f))*cos((1.500000f*TIME))))))))), (parabola(UV.x,((parabola((10.000000f+cos(9.000000f)),0.500000f))*cos(UV.x)))),1);
}