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
     COLOR = vec4(UV.y, (parabola(((UV.x*sin(((parabola(4.500000f,8.000000f))/(2.000000f+sin(3.000000f)))))*sin((UV.y+UV.x))),UV.x)), ((parabola(((TIME*sin(TIME))+sin((3.000000f+sin((UV.y+((5.000000f*cos(3.000000f))-5.000000f)))))),(impulse(9.000000f,1.000000f))))*UV.y),1);
}