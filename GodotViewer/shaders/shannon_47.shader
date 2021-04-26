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
     COLOR = vec4(UV.x, (((9.000000f-1.000000f)+(8.000000f-(8.000000f*sin((((TIME+sin(5.000000f))+sin(UV.x))*sin(((8.000000f-3.000000f)/(((3.000000f+sin((0.500000f+UV.y)))+cos(1.000000f))/2.000000f))))))))*cos(((TIME+UV.x)*8.000000f))), (impulse(UV.y,((((3.500000f*sin(3.000000f))+sin(TIME))+sin((UV.x+cos((((3.500000f+sin(((1.000000f+sin(9.000000f))-5.000000f)))+cos((3.000000f+cos(UV.y))))-(impulse(7.000000f,UV.x)))))))+sin((3.000000f*7.000000f))))),1);
}