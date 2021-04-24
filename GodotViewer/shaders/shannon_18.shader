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
     COLOR = vec4((3.000000f*sin(5.000000f)), (((6.000000f*cos(TIME))*sin((UV.y/((8.000000f*sin(8.000000f))-(((parabola(2.000000f,8.000000f))+cos(((10.000000f/TIME)-1.750000f)))/(parabola((6.000000f+9.000000f),10.000000f)))))))-(6.000000f*sin(TIME))), UV.x,1);
}