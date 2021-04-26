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
     COLOR = vec4((TIME+7.000000f), ((TIME+sin(((2.000000f+sin(4.000000f))*UV.y)))*cos((((4.500000f*UV.y)+sin((UV.x*cos(TIME))))+cos((impulse(7.000000f,3.500000f)))))), (((TIME*sin(TIME))+sin((impulse(8.000000f,0.500000f))))*cos((5.000000f+sin(9.000000f)))),1);
}