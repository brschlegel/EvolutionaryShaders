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
     COLOR = vec4(UV.y, ((UV.x/((4.500000f+sin((((9.000000f+6.000000f)-9.000000f)-TIME)))+((4.000000f-6.000000f)/(((9.000000f*sin(10.000000f))+sin((8.000000f+10.000000f)))+(((1.250000f+sin((2.500000f-((8.000000f+(2.000000f*cos(6.000000f)))*cos(TIME)))))*cos((impulse(4.000000f,9.000000f))))-2.000000f)))))+sin(UV.y)), UV.x,1);
}