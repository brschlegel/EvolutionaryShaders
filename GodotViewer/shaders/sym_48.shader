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
     COLOR = vec4(UV.y, (parabola((TIME+(parabola(((impulse(UV.y,((8.000000f*10.000000f)+cos(10.000000f))))-(UV.y/(5.000000f+sin(7.000000f)))),TIME))),UV.x)), ((parabola((UV.x*cos((UV.x+sin((UV.x+sin(((((parabola(UV.y,3.000000f))/4.000000f)-UV.y)-(impulse(UV.x,1.000000f))))))))),UV.x))*UV.y),1);
}