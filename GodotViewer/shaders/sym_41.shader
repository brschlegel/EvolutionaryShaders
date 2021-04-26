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
     COLOR = vec4(UV.y, (parabola(((2.000000f*sin((8.000000f*cos((7.000000f+sin(7.000000f))))))+sin((TIME+(7.000000f-7.000000f)))),UV.x)), ((parabola((UV.y+sin((TIME+sin(((8.000000f-2.500000f)+(UV.y-TIME)))))),UV.x))*UV.y),1);
}