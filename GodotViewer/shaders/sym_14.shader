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
     COLOR = vec4(TIME, (parabola((parabola(((((8.000000f+sin(4.000000f))+cos(3.000000f))-UV.x)*sin(((parabola(1.500000f,1.000000f))/(parabola(4.000000f,7.000000f))))),(((UV.x+cos(10.000000f))*sin(UV.x))+3.500000f))),UV.x)), ((parabola((8.000000f*(impulse(TIME,UV.y))),UV.x))*UV.y),1);
}