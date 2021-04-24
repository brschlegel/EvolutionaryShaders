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
     COLOR = vec4(0.500000f, (((6.000000f*cos((parabola((UV.y+cos(UV.x)),5.000000f))))*sin((2.000000f/(impulse(((7.000000f+sin(3.500000f))*sin(8.000000f)),((0.500000f-TIME)/UV.x))))))-(TIME*sin(TIME))), UV.x,1);
}