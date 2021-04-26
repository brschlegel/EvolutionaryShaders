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
     COLOR = vec4(4.000000f, ((((4.000000f+4.000000f)+UV.x)+(UV.x/(10.000000f*cos(10.000000f))))*cos(((TIME-(impulse(UV.y,((5.000000f/4.000000f)-UV.x))))*8.000000f))), (impulse(2.000000f,((UV.y+sin(((TIME*UV.y)+sin((((((UV.y+sin((UV.x*9.000000f)))+sin(((TIME*cos(2.000000f))*0.500000f)))*0.500000f)*cos(UV.x))*cos((parabola(10.000000f,1.000000f))))))))+sin(UV.x)))),1);
}