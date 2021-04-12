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
     COLOR = vec4(UV.x, ((UV.x/(((4.000000f+sin(UV.y))+sin((impulse(((((1.000000f+cos(5.000000f))+sin(1.000000f))-((3.000000f/6.000000f)+((UV.x+sin(3.000000f))+(parabola(8.000000f,(impulse(5.000000f,4.000000f)))))))-(10.000000f+sin((3.000000f*sin((parabola(7.000000f,6.000000f))))))),(impulse((7.000000f/UV.x),(parabola(4.000000f,8.000000f))))))))+(UV.y/3.000000f)))+sin(UV.y)), UV.y,1);
}