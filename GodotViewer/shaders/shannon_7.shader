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
     COLOR = vec4(UV.y, ((((4.000000f*(2.500000f+3.000000f))*sin(TIME))+cos(((UV.y+cos((8.000000f+cos(10.000000f))))*cos(UV.y))))-(TIME-TIME)), (1.000000f+cos(4.000000f)),1);
}