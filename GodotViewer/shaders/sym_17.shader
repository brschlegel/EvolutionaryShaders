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
     COLOR = vec4(TIME, (parabola((parabola((((10.000000f+cos(3.000000f))-9.000000f)*sin(((parabola(1.000000f,1.000000f))/(parabola(4.000000f,10.000000f))))),((((1.000000f+4.000000f)+cos(TIME))*sin(UV.x))*TIME))),UV.x)), ((parabola((TIME+sin((TIME+(UV.y*((3.000000f*sin(4.000000f))-UV.x))))),UV.x))*UV.y),1);
}