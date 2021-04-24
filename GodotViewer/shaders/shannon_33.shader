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
     COLOR = vec4(((1.000000f*sin(8.000000f))*sin((2.000000f+sin(UV.x)))), ((((4.000000f+TIME)*sin(TIME))+sin(((UV.y+cos(UV.y))*cos(UV.y))))-(TIME*sin(TIME))), UV.x,1);
}