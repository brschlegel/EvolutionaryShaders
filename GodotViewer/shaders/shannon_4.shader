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
     COLOR = vec4(UV.y, ((6.000000f*cos((UV.x/((TIME-3.000000f)*sin(((impulse(2.000000f,1.000000f))+((3.000000f*3.000000f)*cos(((TIME+sin(TIME))+cos(((8.000000f*cos(6.000000f))+sin(4.000000f))))))))))))+(((4.500000f*3.000000f)+sin(2.500000f))*sin(TIME))), UV.y,1);
}