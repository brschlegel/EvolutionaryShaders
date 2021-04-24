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
     COLOR = vec4(1.000000f, ((((UV.x/(((2.000000f+sin(6.000000f))*cos((0.500000f*sin(2.000000f))))-(4.500000f+UV.x)))*cos(TIME))+cos((UV.x+TIME)))+(TIME*sin(TIME))), UV.y,1);
}