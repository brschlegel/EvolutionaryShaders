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
     COLOR = vec4(((6.000000f+cos(((10.000000f+cos(10.000000f))*cos(1.000000f))))*TIME), (UV.x/2.500000f), (parabola((TIME/(UV.x*UV.x)),UV.y)),1);
}