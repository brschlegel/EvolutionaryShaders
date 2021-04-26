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
     COLOR = vec4(UV.x, UV.x, ((parabola((UV.y+sin((TIME+sin(((impulse(TIME,5.000000f))+(UV.y-((1.500000f+sin(TIME))+UV.y))))))),UV.x))*UV.y),1);
}