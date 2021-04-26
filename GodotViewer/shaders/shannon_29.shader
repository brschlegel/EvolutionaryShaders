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
     COLOR = vec4(UV.x, (6.000000f*cos(((TIME+UV.x)*5.000000f))), (impulse((5.000000f/8.000000f),(((UV.y*cos((impulse((TIME/UV.y),(impulse(UV.x,9.000000f))))))+sin(3.000000f))+sin(((TIME-3.000000f)*1.000000f))))),1);
}