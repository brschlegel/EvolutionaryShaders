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
     COLOR = vec4(UV.x, (UV.y*sin((((parabola((6.000000f*(((parabola(5.000000f,(impulse(TIME,1.000000f))))/((UV.x*cos(7.000000f))-((impulse(0.500000f,5.000000f))+3.000000f)))*sin((6.000000f*sin(8.000000f))))),6.000000f))-(8.000000f*sin((1.000000f+cos(5.000000f)))))+cos(3.000000f)))), (parabola((parabola((4.500000f+8.000000f),(TIME*(((impulse((6.000000f*cos(1.000000f)),6.000000f))*UV.y)/1.500000f)))),(1.000000f*cos(UV.x)))),1);
}