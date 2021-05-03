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
     COLOR = vec4((4.000000f+5.000000f), UV.y, (parabola((10.000000f+4.000000f),(impulse((impulse((2.000000f*cos((TIME+(impulse(UV.y,3.000000f))))),(6.000000f*cos((impulse((3.000000f*cos(9f)),UV.x)))))),(9.000000f-UV.x))))),1);
}