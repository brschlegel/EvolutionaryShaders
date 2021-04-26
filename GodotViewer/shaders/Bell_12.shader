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
     COLOR = vec4(((4.500000f+(4.000000f+sin(9.000000f)))+UV.y), (((8.000000f+7.000000f)+sin(8.000000f))*cos((((((parabola(((impulse(9.000000f,4.000000f))*sin((UV.y+(7.000000f+cos(6.000000f))))),((4.000000f+4.000000f)-4.000000f)))*sin(TIME))+(7.000000f-4.000000f))/TIME)*sin(UV.y)))), (((((UV.x+0.750000f)*4.000000f)*cos(TIME))*sin(UV.x))/1.000000f),1);
}