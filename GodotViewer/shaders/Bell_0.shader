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
     COLOR = vec4(5.000000f, ((UV.x*2.500000f)*cos((((((((UV.y*sin(((TIME+6.000000f)+cos(((7.000000f+sin(7.000000f))-7.000000f)))))*(impulse(9.000000f,(impulse((2.000000f*cos(1.000000f)),4.000000f)))))+cos(((4.000000f*sin(6.000000f))*cos(UV.x))))*sin(2.000000f))*TIME)+sin((3.000000f+6.000000f)))+cos(TIME)))), ((((4.000000f*sin(3.000000f))+cos(TIME))+UV.x)+sin((impulse((7.000000f*TIME),5.000000f)))),1);
}