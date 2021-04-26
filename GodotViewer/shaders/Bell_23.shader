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
     COLOR = vec4(TIME, ((9.000000f+sin(TIME))*cos((((((parabola((UV.y*sin((5.000000f/3.000000f))),((8.000000f+4.000000f)-4.000000f)))*sin(TIME))+(((8.000000f*UV.x)+cos((((impulse(3.000000f,5.000000f))*sin(8.000000f))+sin((5.000000f+sin(UV.x))))))-UV.x))+sin((UV.x*cos(6.000000f))))*sin(UV.y)))), (((((((UV.y*cos((UV.y+sin((((UV.y+(parabola(9.000000f,10.000000f)))+UV.x)*cos((UV.y*7.000000f)))))))+cos((impulse(8.000000f,3.000000f))))+0.750000f)*TIME)*cos(TIME))*sin(UV.x))/1.000000f),1);
}