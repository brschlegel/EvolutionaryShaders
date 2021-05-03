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
     COLOR = vec4(((3.000000f+cos(10.000000f))*sin((((TIME+(9.000000f+cos(9.000000f)))*TIME)+sin((TIME*cos((9.000000f+cos(9.000000f)))))))), UV.y, (parabola((UV.y-(parabola(8f,((9f/2f)*cos(UV.x))))),(UV.x*sin(TIME)))),1);
}