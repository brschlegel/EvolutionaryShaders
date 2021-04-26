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
     COLOR = vec4(5.000000f, (((UV.x*(parabola((parabola(UV.x,2.000000f)),(3.000000f+TIME))))+((parabola(2.500000f,2.000000f))+cos((UV.x+(UV.x*(2.000000f*sin(5.000000f)))))))*cos(((TIME+UV.x)*8.000000f))), (impulse(2.000000f,(((UV.y+sin((impulse(UV.y,UV.y))))+sin((1.500000f*(((((3.000000f+sin(((TIME*TIME)*((9.000000f*(parabola(3.000000f,UV.x)))*cos(UV.y)))))*(((8.000000f*5.000000f)+cos(3.000000f))*UV.x))*cos(1.000000f))*TIME)*cos(UV.y)))))+sin((UV.y*1.000000f))))),1);
}