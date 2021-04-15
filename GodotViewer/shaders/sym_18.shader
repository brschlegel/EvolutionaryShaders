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
     COLOR = vec4(UV.x, (UV.y*sin((((parabola((6.000000f*((5.000000f*sin((((9.000000f+(2.000000f*cos(9.000000f)))*cos((5.000000f*sin(4.000000f))))+cos(((4.000000f*UV.x)+6.000000f)))))*sin(2.000000f))),6.000000f))-(((9.000000f+sin(1.000000f))*sin(((3.000000f/(impulse(10.000000f,9.000000f)))+(2.000000f-1.500000f))))-(impulse(4.000000f,1.000000f))))+cos(((TIME*cos(((3.000000f*cos(6.000000f))*cos((UV.x+3.000000f)))))+sin((TIME*10.000000f))))))), (parabola((parabola(UV.x,((((UV.y*cos((impulse(4.000000f,1.500000f))))+UV.y)*sin(((parabola(2.000000f,4.000000f))+sin(((3.000000f+4.000000f)-TIME)))))*6.000000f))),(1.000000f*cos(UV.x)))),1);
}