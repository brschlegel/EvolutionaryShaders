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
     COLOR = vec4(((parabola((6.000000f/5.000000f),7.000000f))+cos(1.000000f)), (((1.000000f+1.000000f)*sin(((9.000000f+cos(UV.x))+((impulse((2.000000f*sin(UV.y)),6.000000f))-8.000000f))))-(((7.000000f+4.000000f)*TIME)*sin(TIME))), UV.y,1);
}