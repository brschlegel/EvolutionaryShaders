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
     COLOR = vec4(UV.y, (parabola((parabola((UV.x*sin(((parabola(TIME,0.500000f))/(parabola(4.000000f,7.000000f))))),(((((7.000000f*cos(8.000000f))+TIME)+cos(TIME))*sin(UV.x))+(((9.000000f+cos(UV.y))*sin(UV.x))+UV.x)))),UV.x)), ((parabola(((6.000000f+sin((7.000000f*4.000000f)))+sin((TIME+((3.000000f-7.000000f)+sin((UV.y-(impulse(5.000000f,(9.000000f+10.000000f))))))))),UV.x))*UV.y),1);
}