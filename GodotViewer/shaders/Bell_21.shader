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
     COLOR = vec4(UV.x, ((UV.y+sin(1.000000f))*cos(((((UV.y*sin(TIME))*TIME)+UV.y)*sin(UV.y)))), ((((((((UV.x*((4.000000f*sin(7.000000f))+UV.x))*cos(((impulse(1.000000f,1.000000f))+sin(((2.000000f+8.000000f)*cos(10.000000f))))))+cos(3.000000f))+(10.000000f+sin(6.000000f)))*TIME)*cos(TIME))+sin(8.000000f))*cos(UV.y)),1);
}