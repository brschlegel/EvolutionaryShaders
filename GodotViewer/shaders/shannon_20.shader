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
     COLOR = vec4(UV.x, (5.000000f*sin(((TIME+UV.x)*8.000000f))), (impulse(UV.y,((1.000000f+sin(1.000000f))*sin((UV.y*UV.x))))),1);
}