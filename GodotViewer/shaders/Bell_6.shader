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
     COLOR = vec4(1.000000f, (9.000000f*cos(((((TIME*sin(1.000000f))*(((TIME*UV.x)+cos((1.500000f/((parabola((TIME+UV.y),(7.000000f-(impulse(5.000000f,10.000000f)))))*sin(TIME)))))-(7.000000f-2.000000f)))+sin(((impulse(3.500000f,4.000000f))*cos((4.000000f/4.000000f)))))*cos(5.000000f)))), (((UV.x*cos(TIME))+sin(2.500000f))*cos(UV.x)),1);
}