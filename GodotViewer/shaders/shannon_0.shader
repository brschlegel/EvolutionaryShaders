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
     COLOR = vec4((parabola(TIME,2.000000f)), ((9.000000f+sin(2.000000f))*cos(((TIME+UV.x)*8.000000f))), (impulse(UV.y,UV.x)),1);
}