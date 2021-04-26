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
     COLOR = vec4(TIME, ((3.000000f+cos(7.000000f))*cos(((TIME-(impulse((10.000000f-2.000000f),UV.y)))*8.000000f))), (impulse(2.000000f,((UV.y+sin(((TIME*cos((parabola(2.500000f,UV.x))))*((((3.000000f/6.000000f)*0.500000f)*cos(3.000000f))*cos(TIME)))))+sin(UV.x)))),1);
}