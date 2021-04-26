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
     COLOR = vec4(((5.000000f-4.000000f)/3.000000f), ((TIME+sin(((2.000000f+sin(4.000000f))*UV.x)))*cos((((((parabola(5.000000f,5.000000f))*sin(TIME))*(((impulse(TIME,UV.x))+cos((((UV.x*10.000000f)+cos((parabola(7.000000f,8.000000f))))*sin(((TIME*UV.x)+cos((((TIME+sin(10.000000f))*sin(9.000000f))*sin(UV.x))))))))+cos((impulse(1.000000f,(2.000000f+10.000000f))))))+sin(((impulse(TIME,TIME))+sin(TIME))))+cos((impulse(7.000000f,UV.x)))))), (((((UV.x+sin((UV.x-(TIME+sin(((impulse(4.000000f,9.000000f))+7.000000f))))))*3.000000f)*sin(TIME))+sin((UV.y*cos((9.000000f+cos(9.000000f))))))*cos(TIME)),1);
}