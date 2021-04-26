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
     COLOR = vec4((9.000000f+cos(8.000000f)), (((UV.x+sin(3.000000f))+sin((3.000000f*sin(2.000000f))))*cos((((TIME*TIME)*cos(UV.y))*sin(TIME)))), (((((1.000000f+1.500000f)/UV.y)*cos(TIME))+sin(10.000000f))*cos(1.000000f)),1);
}