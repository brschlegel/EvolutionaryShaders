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
     COLOR = vec4((9.000000f/(parabola(2.000000f,6.000000f))), ((9.000000f+sin(8.000000f))*cos((((((parabola(UV.y,((8.000000f+2.000000f)-4.000000f)))*sin(TIME))+((9.000000f*4.000000f)-UV.x))+sin((UV.y*cos(6.000000f))))*sin(UV.y)))), ((((TIME*(9.000000f*sin(8.000000f)))*cos(TIME))*sin((8.000000f+sin(TIME))))/1.000000f),1);
}