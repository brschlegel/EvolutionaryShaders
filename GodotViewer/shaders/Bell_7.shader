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
     COLOR = vec4((TIME-1.000000f), ((9.000000f+sin(TIME))*cos(((((((((UV.x*cos(4.500000f))+cos((impulse((impulse((10.000000f+cos(4.000000f)),(5.000000f/TIME))),2.000000f))))+TIME)*sin(((UV.y+4.000000f)-2.000000f)))*sin(TIME))*UV.y)+sin(UV.y))*sin(UV.y)))), ((((((((UV.x+sin(((7.000000f*cos(6.000000f))+UV.x)))*cos(0.500000f))+cos(3.000000f))+1.500000f)+TIME)*cos(TIME))+sin(8.000000f))*cos((2.000000f*cos(7.000000f)))),1);
}