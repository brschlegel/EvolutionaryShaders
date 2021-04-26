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
     COLOR = vec4((UV.x*3.000000f), ((TIME+sin(((2.000000f+sin(4.000000f))*UV.x)))*cos(((UV.x+sin(((impulse(TIME,TIME))+sin(TIME))))+cos((impulse(7.000000f,UV.x)))))), (((((((1.000000f*cos((UV.x-5.000000f)))+sin(TIME))+sin((6.000000f-UV.x)))*3.000000f)*sin(TIME))+sin((UV.y*cos((9.000000f+cos(9.000000f))))))*cos(TIME)),1);
}