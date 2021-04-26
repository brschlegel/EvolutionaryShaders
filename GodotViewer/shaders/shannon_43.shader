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
     COLOR = vec4(UV.x, ((4.000000f+((parabola(TIME,7.000000f))-((UV.y+sin((8.000000f+10.000000f)))+(((7.000000f/1.000000f)/(3.000000f*cos(8.000000f)))-UV.y))))*cos(((TIME-UV.x)*8.000000f))), (impulse(2.000000f,(((UV.y+sin(UV.x))+sin(((TIME*cos((1.000000f-UV.x)))*((parabola(8.000000f,10.000000f))*TIME))))+sin(1.500000f)))),1);
}