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
     COLOR = vec4((impulse(UV.y,2.000000f)), ((TIME+(8.000000f-(((UV.x/(3.000000f*sin(((7.000000f+cos(TIME))+TIME))))-(1.000000f*cos(2.000000f)))+sin(3.500000f))))*cos(((TIME+UV.x)*8.000000f))), (impulse(UV.y,(((5.000000f+sin(TIME))+sin((UV.x+cos((((6.000000f+sin(1.000000f))+cos((UV.x+cos(UV.y))))-(impulse((10.000000f*(parabola(2.500000f,0.500000f))),(5.000000f*sin(3.000000f)))))))))+sin(UV.x)))),1);
}