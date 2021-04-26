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
     COLOR = vec4((8.000000f/5.000000f), (parabola(UV.y,UV.x)), ((parabola((((UV.y*cos(1.000000f))*sin((8.000000f+sin((impulse(UV.y,10.000000f))))))+(parabola(TIME,(UV.y+(UV.y-((1.500000f+sin(((5.000000f-(8.000000f*cos(4.000000f)))+sin(TIME))))+5.000000f)))))),UV.x))*UV.y),1);
}