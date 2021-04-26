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
     COLOR = vec4((UV.y+cos(4.000000f)), (9.000000f*cos(((((8.000000f*sin(1.000000f))*(((TIME*UV.x)+cos((1.500000f/((parabola((TIME+((UV.x+sin(UV.y))+UV.x)),UV.y))*sin(TIME)))))-(7.000000f-2.000000f)))+sin(UV.y))*cos(5.000000f)))), ((((6.000000f/6.000000f)*cos(TIME))+sin((((UV.y/(((4.000000f*cos(5.000000f))*cos(4.500000f))+sin((2.000000f+cos(TIME)))))+TIME)+cos((UV.x*TIME)))))*cos(UV.x)),1);
}