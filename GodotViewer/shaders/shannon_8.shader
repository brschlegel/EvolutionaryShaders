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
     COLOR = vec4(UV.y, (((10.000000f+cos((1.000000f+sin((10.000000f*cos(5.000000f))))))+(UV.x+cos((((1.000000f/(UV.y-(8.000000f+8.000000f)))/(2.000000f*cos(1.000000f)))+(9.000000f*sin(5.000000f))))))*cos(((TIME-((6.000000f*8.000000f)+cos(1.000000f)))*8.000000f))), (impulse(UV.x,(((UV.y+sin((impulse((8.000000f/(9.000000f*cos(7.000000f))),UV.y))))+sin(UV.x))+sin(3.000000f)))),1);
}