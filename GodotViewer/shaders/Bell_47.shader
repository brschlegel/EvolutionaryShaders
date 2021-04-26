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
     COLOR = vec4(4.500000f, ((TIME+sin((TIME*UV.x)))*cos(((TIME+sin((7.000000f*cos((6.000000f-(4.000000f*cos(1.000000f)))))))+cos((parabola(UV.x,1.000000f)))))), ((((((4.000000f+sin(2.000000f))+sin(8.000000f))*TIME)*cos(TIME))+sin((((9.000000f+sin(1.000000f))*cos(4.000000f))+cos(((6.000000f*sin(4.500000f))+cos(1.000000f))))))*cos((UV.y*2.500000f))),1);
}