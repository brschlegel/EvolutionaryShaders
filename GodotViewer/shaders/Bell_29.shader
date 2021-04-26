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
     COLOR = vec4(((((6.000000f+9.000000f)/(impulse(8.000000f,1.000000f)))-6.000000f)*cos(TIME)), ((TIME+sin(((2.000000f+sin(4.000000f))*((7.000000f-(10.000000f+sin(5.000000f)))-(6.000000f*sin(7.000000f))))))*cos((((((parabola(5.000000f,5.000000f))*sin(TIME))*(((impulse(TIME,8.000000f))+cos((((UV.x*10.000000f)+(parabola(UV.y,4.000000f)))*sin(((TIME*UV.x)+cos((((4.000000f/10.000000f)*sin(9.000000f))*sin(UV.x))))))))+cos((impulse(1.000000f,7.000000f)))))+sin(UV.x))+cos((impulse((2.000000f*sin(6.000000f)),UV.x)))))), 6.000000f,1);
}