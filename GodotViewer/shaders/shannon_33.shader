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
     COLOR = vec4((parabola(3.000000f,9.000000f)), ((TIME+((parabola(2.500000f,UV.x))+cos((UV.x+10.000000f))))*cos(((TIME+UV.x)*8.000000f))), (impulse(2.000000f,(((UV.y+sin((impulse((impulse(TIME,UV.y)),(5.000000f+sin(3.000000f))))))+sin((3.000000f*(((((6.000000f+sin(((TIME*TIME)*((UV.x*(parabola(3.000000f,UV.x)))*cos(UV.y)))))*(((8.000000f*2.500000f)+cos(3.000000f))*UV.x))*cos(1.000000f))*TIME)*cos((impulse(4.000000f,(5.000000f*10.000000f))))))))+sin((UV.y*1.000000f))))),1);
}