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
     COLOR = vec4(((5.000000f+3.000000f)*sin((((TIME*cos(2.000000f))+cos(UV.x))+sin((UV.y+6.000000f))))), ((((UV.y+cos(((7.000000f*sin(6.000000f))*cos(UV.x))))/((4.000000f+cos(5.000000f))-UV.x))+cos(((UV.y+cos(UV.y))*cos(UV.y))))-(TIME*sin(TIME))), 4.000000f,1);
}