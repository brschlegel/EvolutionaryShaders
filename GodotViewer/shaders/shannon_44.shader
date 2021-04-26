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
     COLOR = vec4(UV.x, (((impulse((8.000000f-UV.x),(UV.y+cos(6.000000f))))+(8.000000f-(((UV.x/((8.000000f-9.000000f)+cos(((7.000000f+cos(7.000000f))+cos(UV.y)))))-6.000000f)*sin(((UV.y+sin(UV.y))*sin((UV.y/(((1.500000f+sin(((UV.x-2.000000f)+UV.y)))+cos(8.000000f))/2.000000f))))))))*cos(((TIME+UV.x)*8.000000f))), (impulse(UV.y,((((UV.y*0.500000f)+sin(UV.x))+sin((TIME+cos(((UV.x/(UV.x+cos(UV.x)))-UV.x)))))+sin((UV.y*UV.x))))),1);
}