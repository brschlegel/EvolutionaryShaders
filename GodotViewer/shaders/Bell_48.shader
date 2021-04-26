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
     COLOR = vec4(3.000000f, ((TIME+sin((2.000000f*(UV.x-(6.000000f*sin(7.000000f))))))*cos((((((parabola(5.000000f,5.000000f))*sin(TIME))*(((impulse(8.000000f,UV.x))+cos((4.000000f/8.000000f)))+cos(2.000000f)))+cos((TIME+sin(TIME))))+cos((impulse(7.000000f,UV.x)))))), ((((((4.000000f+sin(5.000000f))+sin((UV.x-((impulse(7.000000f,3.000000f))+sin(((2.000000f+sin(8.000000f))+(3.000000f/TIME)))))))*3.000000f)*sin(TIME))+cos((UV.y*cos(TIME))))*cos(TIME)),1);
}