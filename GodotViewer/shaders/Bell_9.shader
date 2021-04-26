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
     COLOR = vec4(TIME, (((TIME+sin(UV.y))+cos((parabola(UV.x,0.500000f))))*cos(((((UV.y+TIME)*5.000000f)+sin(2.000000f))+cos((7.000000f+cos(2.000000f)))))), (UV.x+((impulse((2.000000f/7.000000f),6.000000f))*TIME)),1);
}