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
     COLOR = vec4(1.500000f, (((impulse((8.000000f-6.000000f),(UV.y+cos(6.000000f))))+(8.000000f-((((6.000000f*5.000000f)/(6.000000f+cos((3.000000f+10.000000f))))-(UV.y*cos(2.000000f)))*sin(((6.000000f+sin(UV.y))*sin((UV.y/(((3.000000f+sin((0.500000f*sin((UV.y+cos((parabola((1.000000f-((impulse(UV.x,2.000000f))/TIME)),UV.y))))))))+cos(8.000000f))/(10.000000f+sin((9.000000f+1.000000f)))))))))))*cos(((TIME+UV.x)*8.000000f))), (impulse(UV.y,(((5.000000f+sin((((impulse(4.000000f,((9.000000f+sin((3.000000f*2.000000f)))*TIME)))*TIME)*UV.x)))+sin((1.250000f+cos((impulse(5.000000f,2.000000f))))))+sin((TIME*UV.x))))),1);
}