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
     COLOR = vec4(UV.y, ((((UV.y+cos((parabola(4.500000f,9.000000f))))+1.500000f)+((7.000000f*4.000000f)-(((9.000000f/(UV.x+cos((4.500000f+(5.000000f*sin(UV.y))))))-4.500000f)*sin((UV.y*sin((UV.y/(((3.000000f+sin(UV.y))+cos(4.000000f))/2.000000f))))))))*cos(((TIME+6.000000f)*8.000000f))), (impulse(UV.y,((UV.x+sin((2.500000f+cos(TIME))))+sin(((1.750000f+cos((impulse(1.000000f,5.000000f))))*UV.x))))),1);
}