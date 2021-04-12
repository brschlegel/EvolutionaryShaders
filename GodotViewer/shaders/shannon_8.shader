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
     COLOR = vec4(UV.x, ((UV.x/((4.500000f+sin((impulse((UV.y-(7.000000f+sin((impulse((UV.y+(((9.000000f*cos(UV.x))*TIME)+sin((4.000000f*10.000000f)))),7.000000f))))),(impulse(((TIME*sin(((9.000000f*sin(8.000000f))+(5.000000f+cos(5.000000f)))))/(parabola((5.000000f*2.000000f),10.000000f))),(6.000000f*sin(4.500000f))))))))+((2.000000f+(4.000000f+9.000000f))/(2.500000f+(((impulse(2.500000f,(1.000000f*cos(((parabola(4.000000f,10.000000f))+sin(10.000000f))))))-(1.000000f+cos(9.000000f)))+sin(2.000000f))))))+sin(UV.y)), UV.y,1);
}