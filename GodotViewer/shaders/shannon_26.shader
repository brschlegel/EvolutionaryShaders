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
     COLOR = vec4(5.000000f, (((UV.x*(parabola((parabola(UV.x,4.000000f)),(3.000000f+TIME))))+((parabola(1.250000f,2.000000f))+cos((UV.x+(UV.x*UV.y)))))*cos(((TIME+UV.x)*8.000000f))), (impulse(2.000000f,(((UV.y+sin((impulse((impulse(TIME,UV.y)),UV.y))))+sin((1.500000f*(((((3.000000f+sin(((TIME*TIME)*(UV.y*cos(UV.y)))))*(((8.000000f*2.500000f)+cos(3.000000f))*UV.x))*cos(1.000000f))*TIME)*cos(UV.y)))))+sin((UV.y*1.000000f))))),1);
}