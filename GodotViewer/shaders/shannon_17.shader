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
     COLOR = vec4(UV.y, ((2.000000f*sin(((9.000000f+cos(UV.x))+((impulse((2.000000f*sin((6.000000f+cos((7.000000f+sin(2.000000f)))))),UV.y))-UV.x))))-(((7.000000f+4.000000f)*7.000000f)*sin(TIME))), (impulse((parabola((UV.x+sin(UV.y)),9.000000f)),(UV.y/(3.000000f+sin(5.000000f))))),1);
}