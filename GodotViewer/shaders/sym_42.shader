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
     COLOR = vec4((((9.000000f+cos(8.000000f))+sin(TIME))+cos(1.000000f)), UV.x, (parabola((10.000000f-(9.000000f-8.000000f)),UV.y)),1);
}