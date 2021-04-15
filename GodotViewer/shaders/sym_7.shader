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
     COLOR = vec4((7.000000f/(0.250000f+sin(((4f+sin(((impulse(UV.y,3.000000f))+sin((UV.x*4f)))))*cos(7.000000f))))), UV.x, UV.x,1);
}