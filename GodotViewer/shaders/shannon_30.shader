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
     COLOR = vec4((5.000000f+UV.x), ((impulse(4.000000f,3.000000f))+((4.000000f*(5.000000f-(impulse(4.000000f,10.000000f))))*sin(TIME))), UV.y,1);
}