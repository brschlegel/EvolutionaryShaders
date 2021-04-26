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
     COLOR = vec4(((1.000000f*3.000000f)*cos(TIME)), ((TIME+sin((((4.000000f*sin(5.000000f))+sin(4.000000f))*(((2.000000f-10.000000f)-TIME)-(10.000000f-7.000000f)))))*cos(((((UV.y*sin(TIME))*((((10.000000f*cos(9.000000f))*4.000000f)+cos((((4.000000f*cos(UV.x))+cos((parabola(7.000000f,8.000000f))))*sin(((TIME*UV.x)+cos((((UV.y+cos(10.000000f))*sin(9.000000f))*sin(UV.x))))))))+cos(UV.x)))+sin(TIME))+cos(UV.y)))), (TIME*cos(UV.y)),1);
}