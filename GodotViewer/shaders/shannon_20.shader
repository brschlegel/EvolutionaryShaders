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
     COLOR = vec4(UV.y, (((TIME*sin(TIME))+cos(((UV.y+cos((3.000000f*3.000000f)))*cos(4.000000f))))-((parabola(4.500000f,1.000000f))*sin(TIME))), (4.000000f+sin(9.000000f)),1);
}