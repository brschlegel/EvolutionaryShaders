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
     COLOR = vec4(UV.y, (((6.000000f*cos(9.000000f))*sin((TIME/((4.000000f*sin(4.000000f))-((UV.y+cos(7.000000f))/UV.x)))))-(TIME*sin(TIME))), UV.y,1);
}