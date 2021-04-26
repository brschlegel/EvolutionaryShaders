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
     COLOR = vec4(UV.y, (parabola(((UV.y*sin(((2.000000f+(parabola((3.000000f*sin(9.000000f)),3.000000f)))+cos((TIME*cos(UV.y))))))-(UV.x+(5.000000f+8.000000f))),UV.x)), ((parabola((UV.x+sin((TIME+sin((UV.y+sin((UV.y*(impulse((TIME/((parabola(TIME,UV.x))*(impulse(0.875000f,(UV.y*sin((1.000000f*2.000000f))))))),UV.x))))))))),UV.x))*UV.y),1);
}