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
     COLOR = vec4(UV.x, ((TIME+(4.000000f+sin(5.000000f)))*cos(((TIME+(10.000000f*sin(7.000000f)))+sin(UV.y)))), (impulse((5.000000f/4.000000f),(((UV.y*cos((impulse((TIME/UV.y),(impulse(UV.x,9.000000f))))))+sin((6.000000f*(((((6.000000f+sin(((TIME*((2.000000f/1.000000f)-TIME))*((UV.x*(parabola(1.500000f,UV.x)))*cos(UV.y)))))*UV.y)*UV.y)*(8.000000f/10.000000f))*cos(UV.y)))))+sin(((TIME-6.000000f)*1.000000f))))),1);
}