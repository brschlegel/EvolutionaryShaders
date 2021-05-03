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
     COLOR = vec4(UV.y, (parabola(5.000000f,7.000000f)), (parabola(9f,(impulse((impulse((2.000000f*cos((TIME+3f))),(6.000000f*cos((impulse((4.000000f*cos(9f)),UV.x)))))),(9.000000f+sin(UV.x)))))),1);
}