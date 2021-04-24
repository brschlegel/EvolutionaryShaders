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
     COLOR = vec4(UV.y, (((((impulse(4.000000f,2.500000f))/((5.000000f+cos(3.500000f))-(impulse((1.250000f/(10.000000f*sin(5.000000f))),5.000000f))))*cos((7.000000f*cos((impulse((1.000000f-3.000000f),7.000000f))))))*sin(UV.x))-(TIME*sin(TIME))), (7.000000f-8.000000f),1);
}