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
     COLOR = vec4(UV.y, (parabola((parabola((9.000000f*cos(7.000000f)),UV.x)),UV.x)), ((parabola((8.000000f+sin((UV.y+sin(UV.x)))),UV.x))*UV.y),1);
}