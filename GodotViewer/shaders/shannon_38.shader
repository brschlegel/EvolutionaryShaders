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
     COLOR = vec4(UV.y, ((TIME*sin(((10.000000f+cos(((UV.y+1.000000f)*cos((impulse(5.000000f,TIME))))))/((8.000000f*sin(8.000000f))-(((parabola((parabola(6.000000f,5.000000f)),8.000000f))+cos((UV.x-7.000000f)))/(parabola(UV.x,6.000000f)))))))-(7.000000f*sin(TIME))), UV.x,1);
}