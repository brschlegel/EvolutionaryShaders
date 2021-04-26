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
     COLOR = vec4((UV.y-2.000000f), ((9.000000f+sin(8.000000f))*cos((((((parabola((3.000000f*sin(((3.000000f+sin(7.000000f))+(7.000000f+cos(6.000000f))))),((8.000000f+4.000000f)-4.000000f)))*sin(TIME))+(((8.000000f*UV.x)+cos(TIME))-UV.x))+sin((UV.x*cos(6.000000f))))*sin(UV.y)))), (((((((UV.y*cos((UV.y+sin((((UV.y+7.000000f)+UV.x)*cos((UV.y*7.000000f)))))))+cos((impulse((impulse(2.000000f,TIME)),3.000000f))))+0.750000f)*TIME)*cos(TIME))*sin(UV.x))/0.500000f),1);
}