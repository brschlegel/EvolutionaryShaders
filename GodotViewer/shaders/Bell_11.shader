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
     COLOR = vec4(((2.500000f+8.000000f)+sin(10.000000f)), ((TIME+sin(((2.000000f+sin(4.000000f))*(UV.x-7.000000f))))*cos((((((3.000000f+cos(1.000000f))*sin(TIME))*((9.000000f-((((3.000000f-9.000000f)*cos(10.000000f))+cos((parabola(7.000000f,8.000000f))))*sin((2.000000f+cos(((TIME*sin(9.000000f))*sin(UV.x)))))))+cos(UV.x)))+sin(((impulse(TIME,TIME))*cos((7.000000f*cos(7.000000f))))))+cos((impulse(7.000000f,7.000000f)))))), (((8.000000f*(5.000000f+cos(7.000000f)))+sin(UV.x))*cos(TIME)),1);
}