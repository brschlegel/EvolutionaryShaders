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
     COLOR = vec4((((5.000000f+sin(10.000000f))+cos(10.000000f))-9.000000f), (((UV.x*(parabola(UV.y,((7.000000f-3.000000f)+2.000000f))))+((parabola(2.500000f,UV.y))+cos(((9.000000f/(((parabola(9.000000f,7.000000f))*cos(2.000000f))*sin(5.000000f)))+(UV.x*UV.y)))))*cos(((TIME+UV.x)*8.000000f))), (impulse(1.000000f,((((4.000000f*cos(5.000000f))+sin(UV.y))+sin((TIME*((UV.x*TIME)*cos(UV.y)))))+sin(7.000000f)))),1);
}