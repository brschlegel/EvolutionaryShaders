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
     COLOR = vec4(((3.000000f/(parabola(8.000000f,5.000000f)))+cos(5.000000f)), (((2.000000f*cos(10.000000f))*sin(((UV.y+cos(((UV.y+(6.000000f/1.000000f))*cos((impulse(5.000000f,TIME))))))/((8.000000f*sin(8.000000f))-(((parabola((parabola(6.000000f,5.000000f)),8.000000f))+cos(((parabola(10.000000f,2.000000f))-7.000000f)))/(parabola((5.000000f*sin(2.000000f)),6.000000f)))))))-(6.000000f*sin(TIME))), UV.x,1);
}