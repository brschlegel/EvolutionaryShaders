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
     COLOR = vec4((10.000000f-((9.000000f*6.000000f)*cos(8.000000f))), (parabola((parabola(((UV.x+1.000000f)*sin((TIME/(parabola((UV.x+cos(0.500000f)),UV.y))))),(5.000000f+(TIME+cos((TIME+UV.y)))))),UV.x)), ((parabola((((UV.y-1.000000f)*sin(UV.x))/((parabola(9.000000f,10.000000f))*TIME)),UV.x))*UV.y),1);
}