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
     COLOR = vec4(UV.y, (parabola((parabola((UV.x*sin(((1.000000f*0.500000f)/TIME))),((((UV.x+TIME)+cos(TIME))*sin(UV.x))+(((9.000000f+cos(UV.y))*sin(UV.x))+UV.x)))),UV.x)), ((parabola(TIME,UV.x))*UV.y),1);
}