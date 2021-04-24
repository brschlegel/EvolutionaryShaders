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
     COLOR = vec4(UV.y, ((((5.000000f-1.000000f)*cos((parabola(UV.x,5.000000f))))*sin(TIME))-(TIME*sin(TIME))), 0.500000f,1);
}