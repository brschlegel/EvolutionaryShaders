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
     COLOR = vec4(((4.000000f/UV.y)/(5.000000f/10.000000f)), (parabola((TIME+(parabola((UV.y+TIME),TIME))),UV.x)), ((parabola(((TIME+3.000000f)*cos((3.000000f+sin((UV.y*5.000000f))))),UV.x))*UV.y),1);
}