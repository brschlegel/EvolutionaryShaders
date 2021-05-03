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
     COLOR = vec4(((UV.y+6.000000f)-9f), UV.x, (parabola(9f,(impulse((impulse(((4f*(impulse(5f,2.000000f)))*cos((TIME+3f))),(6.000000f*cos((impulse((8f*cos(UV.x)),(4f*sin(1f)))))))),(UV.y+sin((UV.y+cos((10f*sin(3.500000f)))))))))),1);
}