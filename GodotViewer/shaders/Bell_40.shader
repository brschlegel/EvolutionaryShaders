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
     COLOR = vec4((10.000000f*cos(3.000000f)), ((TIME+sin((((4.000000f*sin(5.000000f))+sin(4.000000f))*(((2.000000f-10.000000f)-TIME)-7.000000f))))*cos(((((UV.y*sin((10.000000f*sin(2.000000f))))*(((TIME*4.000000f)+cos(8.000000f))+cos(UV.x)))+sin((UV.x*cos(TIME))))+cos(UV.y)))), ((1.000000f+sin((9.000000f+sin((parabola((impulse(10.000000f,6.000000f)),(10.000000f+2.000000f)))))))*cos(TIME)),1);
}