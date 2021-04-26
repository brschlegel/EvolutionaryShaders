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
     COLOR = vec4(UV.x, (TIME*cos(((((7.000000f*cos(1.000000f))*TIME)+cos(UV.y))+sin(UV.y)))), (((9.000000f*cos((2.000000f/(UV.y+sin(7.000000f)))))+sin((UV.y*sin(0.500000f))))*cos(TIME)),1);
}