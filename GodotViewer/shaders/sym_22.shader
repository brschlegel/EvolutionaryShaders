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
     COLOR = vec4(UV.y, UV.y, ((parabola((((UV.x*cos(4.000000f))*sin(UV.x))+sin((TIME+sin((UV.x+sin((UV.y-(((10.000000f+(parabola((3.000000f+sin(5.000000f)),UV.y)))/(2.000000f*sin(10.000000f)))*sin(UV.y))))))))),UV.x))*UV.y),1);
}