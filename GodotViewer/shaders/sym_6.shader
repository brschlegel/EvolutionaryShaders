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
     COLOR = vec4(UV.y, ((6.000000f+sin(4.000000f))*sin(TIME)), (parabola(9f,(impulse((impulse((1.000000f*cos((TIME+3f))),UV.y)),UV.y)))),1);
}