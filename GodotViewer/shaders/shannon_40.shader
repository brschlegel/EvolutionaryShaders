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
     COLOR = vec4(4.000000f, ((TIME+(4.000000f*sin(9.000000f)))*cos(((TIME+UV.x)*8.000000f))), (impulse(2.000000f,(((UV.y*cos((impulse((TIME/UV.y),1.000000f))))+sin((UV.x*(((TIME*UV.y)+(8.000000f/10.000000f))*cos(UV.y)))))+sin((((4.000000f/6.000000f)-6.000000f)*1.000000f))))),1);
}