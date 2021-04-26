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
     COLOR = vec4((10.000000f+sin(5.000000f)), ((TIME+sin(((TIME+sin(4.000000f))*9.000000f)))*cos(((((UV.y+TIME)*((8.000000f+4.000000f)-4.000000f))+sin((4.000000f+sin(1.000000f))))+cos(2.500000f)))), (3.000000f+(TIME*TIME)),1);
}