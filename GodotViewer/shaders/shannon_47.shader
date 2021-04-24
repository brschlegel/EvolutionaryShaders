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
     COLOR = vec4((3.000000f+10.000000f), (((9.000000f*cos((1.000000f+(2.000000f*sin(5.000000f)))))*sin((UV.x+(((TIME+2.000000f)*cos(6.000000f))-1.500000f))))+((2.000000f*(5.000000f-3.000000f))*sin(TIME))), ((TIME+sin((impulse(TIME,4.000000f))))*cos(TIME)),1);
}