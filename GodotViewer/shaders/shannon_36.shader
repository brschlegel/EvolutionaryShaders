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
     COLOR = vec4(UV.x, (((TIME+sin((3.000000f-6.000000f)))+((parabola((((parabola(TIME,5.000000f))-0.875000f)+(2.000000f*7.000000f)),UV.y))+(impulse(UV.x,5.000000f))))*cos(((TIME+UV.x)*8.000000f))), (impulse(2.000000f,((UV.x+sin(((TIME*9.000000f)/UV.x)))+sin((UV.y*(UV.x+sin(3.000000f))))))),1);
}