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
     COLOR = vec4((6.000000f+cos(3.000000f)), (parabola((parabola((UV.y*sin((((TIME/5.000000f)+UV.x)+sin(3.500000f)))),(3.500000f+UV.x))),UV.x)), ((parabola(((UV.x*sin(UV.y))+sin(((1.500000f*cos(TIME))+sin((UV.x+sin(UV.x)))))),UV.x))*UV.y),1);
}