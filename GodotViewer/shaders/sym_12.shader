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
     COLOR = vec4(UV.y, (impulse((UV.x+sin(10.000000f)),2.000000f)), (parabola(9f,(impulse((impulse(((4f*sin((impulse(5f,2.000000f))))*cos((TIME+3f))),(UV.y*cos(((8f*sin(4.500000f))*(4f*sin(1f))))))),((UV.y+sin((UV.x/1f)))+sin((5.000000f+cos((UV.x*sin(3.500000f)))))))))),1);
}