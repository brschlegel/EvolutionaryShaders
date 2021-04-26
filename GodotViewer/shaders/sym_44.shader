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
     COLOR = vec4((UV.y+(impulse(7.000000f,4.000000f))), (parabola((parabola(UV.x,((TIME*cos((10.000000f+cos(2.500000f))))+TIME))),UV.x)), ((parabola(3.000000f,UV.x))*UV.y),1);
}