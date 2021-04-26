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
     COLOR = vec4(2.000000f, (((impulse(TIME,(UV.y+cos(6.000000f))))+(8.000000f-(((10.000000f/(TIME+cos((((parabola(5.000000f,4.000000f))+cos((1.000000f-9.000000f)))+10.000000f))))-(UV.y*cos(1.000000f)))*sin(((6.000000f+sin(UV.y))*sin((UV.y/(((3.000000f+sin(((1.000000f+cos(9.000000f))*sin((UV.y+cos((parabola(TIME,UV.y))))))))+cos(8.000000f))+(4.000000f+9.000000f)))))))))*cos(((TIME+UV.x)*8.000000f))), (impulse(UV.y,(((5.000000f+cos(((5.000000f*(4.000000f*9.000000f))*cos(UV.x))))+sin((2.500000f+cos(UV.x))))+sin(4.000000f)))),1);
}