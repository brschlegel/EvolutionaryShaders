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
     COLOR = vec4(UV.x, ((4.000000f+(((parabola(7.000000f,2.000000f))+cos((UV.y-2.000000f)))-TIME))*cos(((TIME-UV.x)*8.000000f))), (impulse(2.000000f,(((UV.y+sin(UV.x))+sin(((TIME*cos((UV.y-UV.x)))*(10.000000f*cos(((9.000000f+5.000000f)*sin(UV.x)))))))+sin(UV.x)))),1);
}