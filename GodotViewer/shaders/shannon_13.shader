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
     COLOR = vec4(UV.y, ((((UV.y+cos((parabola(9.000000f,9.000000f))))+1.500000f)+((7.000000f*(3.000000f*sin(8.000000f)))-(((9.000000f/(UV.x+cos((4.500000f+(5.000000f-UV.y)))))-9.000000f)*sin((UV.y*sin((UV.y/(((3.000000f+sin(UV.y))+cos(8.000000f))/2.000000f))))))))*cos(((TIME+6.000000f)*8.000000f))), (impulse(UV.y,((UV.x+sin((2.500000f+cos(((UV.x+cos(UV.y))-(impulse(0.500000f,((impulse(8.000000f,10.000000f))+UV.y))))))))+sin(((1.750000f+cos((impulse(1.000000f,5.000000f))))*UV.x))))),1);
}