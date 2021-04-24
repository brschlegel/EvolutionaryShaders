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
     COLOR = vec4(TIME, ((((UV.y+cos((TIME*cos(UV.x))))/((UV.x+cos(5.000000f))-UV.x))+cos(((UV.y+cos(UV.y))*cos(UV.y))))-(TIME*sin(TIME))), UV.y,1);
}