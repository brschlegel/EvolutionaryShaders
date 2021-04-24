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
     COLOR = vec4(UV.x, 0.750000f, (parabola(((5.000000f*cos(5.000000f))-(9.000000f+cos(((UV.x+sin(1.000000f))*cos(((parabola((impulse(7.000000f,10.000000f)),UV.x))+cos((impulse(8.000000f,3.000000f))))))))),UV.y)),1);
}