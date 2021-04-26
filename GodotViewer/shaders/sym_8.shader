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
     COLOR = vec4(1.000000f, (parabola(((4.000000f*sin((5.000000f/TIME)))+cos((10.000000f+(3.000000f+(6.000000f*UV.y))))),UV.x)), ((parabola(((UV.y*sin(9.000000f))+sin(((impulse(7.000000f,7.000000f))+sin((1.750000f+sin((((7.000000f*cos(UV.x))*cos(1.000000f))+sin((impulse((UV.y/TIME),(2.500000f+(3.000000f/(6.000000f*cos(9.000000f)))))))))))))),UV.x))*UV.y),1);
}