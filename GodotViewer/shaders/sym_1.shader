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
     COLOR = vec4((6.000000f*sin(2.000000f)), (parabola((parabola(UV.y,(10.000000f/1.000000f))),UV.x)), ((parabola((((1.000000f*cos(4.000000f))*sin(UV.x))+sin((TIME+sin((UV.x+sin(UV.y)))))),UV.x))*UV.y),1);
}