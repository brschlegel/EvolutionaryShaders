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
     COLOR = vec4(UV.y, (parabola((parabola(((((parabola(4.000000f,3.000000f))+cos(3.000000f))-UV.x)*sin(((parabola(1.000000f,UV.x))/(parabola(UV.x,7.000000f))))),((((1.000000f+((9.000000f/8.000000f)-5.000000f))+cos((TIME/10.000000f)))*sin(UV.x))+(((9.000000f+cos(UV.y))*sin(UV.x))+UV.x)))),UV.x)), (2.000000f*sin(UV.y)),1);
}