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
     COLOR = vec4(UV.y, UV.y, (parabola(9f,((impulse(((4f*(impulse(2.500000f,2.000000f)))*cos((TIME+3f))),(((0.500000f+sin(UV.x))+sin((TIME+sin(5f))))*cos((UV.x+((7.000000f-9.000000f)*sin(1f)))))))*cos(((7.000000f+sin((UV.x/1f)))+sin((10f+cos((10f*sin(3.500000f)))))))))),1);
}