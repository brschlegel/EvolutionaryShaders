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
     COLOR = vec4((impulse(TIME,(parabola(8.000000f,5.000000f)))), 1.500000f, ((UV.y*cos((UV.x+sin(TIME))))*cos(UV.y)),1);
}