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
     COLOR = vec4(UV.y, ((TIME+sin(((2.000000f+sin(4.000000f))*((7.000000f-9.000000f)-7.000000f))))*cos(((((UV.y*sin(TIME))*(((TIME*UV.x)+sin((((UV.y*cos(10.000000f))*(parabola(7.000000f,8.000000f)))*sin(TIME))))+cos(UV.x)))+sin((TIME*cos(TIME))))+cos((impulse((1.000000f-1.000000f),7.000000f)))))), (((8.000000f+8.000000f)+sin(UV.x))*cos(TIME)),1);
}