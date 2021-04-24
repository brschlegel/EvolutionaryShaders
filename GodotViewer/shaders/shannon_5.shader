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
     COLOR = vec4((UV.x*sin(7.000000f)), ((((UV.y+cos((TIME*cos(UV.x))))/((4.000000f+cos(UV.y))-UV.x))+cos(((UV.y+cos(UV.y))*cos(UV.y))))-(TIME*sin(TIME))), UV.x,1);
}