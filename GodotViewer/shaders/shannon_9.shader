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
     COLOR = vec4(3.000000f, (((((UV.y+cos((impulse((4.000000f+sin(7.000000f)),UV.y))))/((TIME*cos((0.500000f*sin(5.000000f))))-(8.000000f*sin(5.000000f))))*cos(UV.y))*sin(((UV.y+cos((0.500000f*cos(((3.000000f+sin(5.000000f))+cos(4.000000f))))))/(2.000000f*cos(4.000000f)))))-((4.000000f*1.000000f)*sin(TIME))), UV.x,1);
}