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
     COLOR = vec4((8.000000f*sin(UV.x)), (2.000000f*cos((((1.000000f+1.000000f)+sin((UV.x*cos(UV.x))))*sin(UV.y)))), ((((TIME*sin(((7.000000f+sin(4.000000f))+8.000000f)))*cos(TIME))*sin(TIME))*cos(UV.y)),1);
}