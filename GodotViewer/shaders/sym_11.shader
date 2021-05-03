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
     COLOR = vec4((UV.y*sin((((TIME*9f)+sin(((6f*cos(3f))*cos(1.500000f))))+cos(3f)))), UV.y, (parabola((10.000000f+4.000000f),(impulse((impulse((1.000000f*cos((TIME+(6.000000f*sin(3.000000f))))),(6.000000f*cos((impulse(((UV.x*sin(UV.x))*cos(9f)),UV.x)))))),(9.000000f+sin(UV.x)))))),1);
}