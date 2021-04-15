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
     COLOR = vec4(UV.x, (UV.y*sin((((parabola((6.000000f*(((0.500000f/(7.000000f*sin(7.000000f)))/((4.000000f*cos((9.000000f/5.000000f)))+cos(((impulse(1.000000f,(impulse(9.000000f,7.000000f))))+6.000000f))))*sin(2.000000f))),6.000000f))-((1.000000f+sin(0.500000f))-6.000000f))+cos((((parabola(8.000000f,4.000000f))*cos(((6.000000f+(7.000000f*sin(4.000000f)))*cos((1.000000f+3.000000f)))))+cos((1.000000f*1.000000f))))))), (parabola((parabola(((7.000000f+sin((6.000000f+cos(8.000000f))))+8.000000f),(((9.000000f*(((1.000000f/10.000000f)+sin((2.000000f*7.000000f)))+10.000000f))*sin((2.000000f/UV.y)))*(impulse(10.000000f,7.000000f))))),(1.000000f*cos(UV.x)))),1);
}