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
     COLOR = vec4(UV.x, (2.000000f*cos((4.000000f+sin(0.500000f)))), (parabola(((impulse(UV.x,UV.y))-(((4.000000f+7.000000f)*6.000000f)+cos(((UV.x+sin(((parabola(10.000000f,7.000000f))+cos(UV.y))))*cos(((parabola((impulse(7.000000f,10.000000f)),2.000000f))+cos(2.500000f))))))),UV.y)),1);
}