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
     COLOR = vec4(1.500000f, (2.000000f*cos((((((parabola(TIME,(10.000000f-2.000000f)))*cos(TIME))+1.000000f)+sin((UV.x*cos(((5.000000f-8.000000f)+sin(5.000000f))))))*sin(UV.y)))), ((((TIME*sin(UV.x))*cos(TIME))*sin((UV.y*cos(3.000000f))))*cos(UV.y)),1);
}