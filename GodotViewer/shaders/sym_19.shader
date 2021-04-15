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
     COLOR = vec4(UV.x, (UV.y*sin((((parabola((6.000000f*6.000000f),6.000000f))-(UV.y-UV.x))+cos(((5.000000f*cos((((parabola(5.000000f,6.000000f))*cos(6.000000f))*cos((((10.000000f/6.000000f)+cos(2.000000f))+1.500000f)))))+sin((1.000000f*1.000000f))))))), (parabola((parabola((((impulse(3.000000f,5.000000f))+cos(4.000000f))+8.000000f),4.000000f)),(1.000000f*cos(UV.x)))),1);
}