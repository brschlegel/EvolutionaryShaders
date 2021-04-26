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
     COLOR = vec4(((UV.y+cos(((7.000000f*sin(4.000000f))+((parabola(6.000000f,UV.x))*(4.000000f+sin(1.000000f))))))+UV.y), (parabola((parabola((((10.000000f+cos(3.000000f))-UV.x)*sin(((parabola((9.000000f/10.000000f),1.000000f))/7.000000f))),((6.000000f*sin(UV.x))+(((parabola((2.000000f/9.000000f),((9.000000f/0.750000f)-(7.000000f*cos(2.000000f)))))*sin(UV.x))+UV.x)))),UV.x)), UV.y,1);
}