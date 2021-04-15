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
     COLOR = vec4(UV.x, (UV.y*sin((((parabola((6.000000f+cos((((parabola(2.500000f,UV.x))/8.000000f)+sin(2.000000f)))),6.000000f))-(((0.625000f*sin(1.000000f))+sin((UV.x+6.000000f)))-3.000000f))+cos(((5.000000f*cos((((parabola((6.000000f+sin(1.000000f)),6.000000f))*cos(6.000000f))*cos((((UV.x/6.000000f)+cos(2.000000f))+1.500000f)))))+sin((1.000000f*(3.000000f*cos((7.000000f*(impulse(5.000000f,UV.x)))))))))))), (parabola((parabola((9.000000f+8.000000f),(((impulse(((10.000000f*cos((1.000000f*sin(4.000000f))))*cos(9.000000f)),(((impulse(6.000000f,9.000000f))+sin((5.000000f+sin((10.000000f*sin(0.500000f))))))+10.000000f)))*sin(4.000000f))*(impulse((2.000000f*3.000000f),((impulse(3.000000f,1.000000f))*cos(2.000000f))))))),(1.000000f*cos(UV.x)))),1);
}