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
     COLOR = vec4(UV.y, ((((4.000000f+cos(4.000000f))+1.500000f)+(8.000000f-(UV.y*sin(UV.y))))*cos(((TIME+UV.x)*8.000000f))), (impulse(UV.y,((UV.x+sin((2.500000f+cos(((UV.x+cos(((2.000000f+6.000000f)+cos(3.000000f))))+sin((impulse((10.000000f*(2.000000f/UV.y)),(UV.x+UV.y)))))))))+sin((1.000000f*sin(UV.x)))))),1);
}