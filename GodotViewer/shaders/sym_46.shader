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
     COLOR = vec4(UV.y, (parabola((parabola((((10.000000f+cos(3.000000f))-UV.x)*((4.500000f*1.000000f)/(parabola(4.000000f,7.000000f)))),(TIME+((TIME*sin(UV.x))+10.000000f)))),UV.x)), ((parabola((5.000000f+sin(((10.000000f-(3.000000f-8.000000f))+sin((UV.y+sin(((9.000000f*sin(TIME))-UV.x))))))),UV.x))*UV.y),1);
}