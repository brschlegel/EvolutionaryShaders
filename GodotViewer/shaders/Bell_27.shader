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
     COLOR = vec4((5.000000f-7.000000f), (9.000000f*cos(((((((1.000000f*(parabola(5.000000f,UV.y)))+cos((UV.y*cos(((UV.y+cos((UV.y+cos(((4.000000f+cos(8.000000f))*sin((3.000000f*6.000000f)))))))+cos((parabola(2.000000f,1.000000f))))))))*sin(1.000000f))*(((TIME*UV.x)+cos(UV.x))-(7.000000f-2.000000f)))+sin(((impulse(7.000000f,(4.000000f-9.000000f)))*cos((4.000000f/4.000000f)))))*cos(5.000000f)))), (((((10.000000f+sin(((6.000000f*cos(UV.x))*cos(UV.x))))*TIME)*cos(TIME))+sin(5.000000f))*cos(UV.x)),1);
}