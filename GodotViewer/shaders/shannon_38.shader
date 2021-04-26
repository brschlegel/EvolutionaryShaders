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
     COLOR = vec4(UV.x, ((UV.y+(8.000000f-((TIME-4.500000f)*sin((UV.y*sin((UV.y/(((3.000000f+sin((6.000000f*cos(8.000000f))))+cos(8.000000f))/2.000000f))))))))*cos(((TIME+UV.x)*8.000000f))), (impulse(UV.y,(((1.000000f*sin(7.000000f))+sin((2.500000f+cos(((1.000000f+cos((UV.x+cos(3.000000f))))-(impulse((10.000000f*(TIME/UV.y)),UV.y)))))))+sin((TIME*UV.x))))),1);
}