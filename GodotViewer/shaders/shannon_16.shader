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
     COLOR = vec4(UV.y, ((((((UV.x*cos(7.000000f))+cos(UV.y))/((TIME*cos(9.000000f))-(impulse((8.000000f/8.000000f),TIME))))*cos(TIME))+cos((UV.x+(((2.000000f+4.000000f)*cos(UV.x))/3.000000f))))+((4.000000f*((impulse(9.000000f,2.000000f))-3.000000f))*sin(TIME))), (UV.y+cos((6.000000f*cos((7.000000f*sin(10.000000f)))))),1);
}