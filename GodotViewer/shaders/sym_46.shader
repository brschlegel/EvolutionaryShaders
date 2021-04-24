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
     COLOR = vec4((4.000000f*sin(UV.y)), (0.625000f*UV.x), (parabola(((impulse(UV.x,UV.y))+sin(((5.000000f*6.000000f)+cos((((UV.y+7.000000f)+sin(1.000000f))*cos(((parabola((impulse(7.000000f,10.000000f)),2.000000f))+cos(1.250000f)))))))),UV.y)),1);
}