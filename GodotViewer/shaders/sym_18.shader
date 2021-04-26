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
     COLOR = vec4(TIME, (parabola((parabola(TIME,((UV.y*sin(9.000000f))+((parabola(3.000000f,7.000000f))*(9.000000f+cos(1.000000f)))))),UV.x)), ((parabola((TIME+sin(9.000000f)),UV.x))*UV.y),1);
}