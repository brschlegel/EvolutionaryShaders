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
     COLOR = vec4((2.000000f*sin(UV.y)), ((((4.000000f+(6.000000f*6.000000f))+((1.000000f*cos(8.000000f))*UV.y))+cos(3.500000f))*cos(((TIME-(impulse((6.000000f-8.000000f),UV.y)))*(7.000000f*cos(4.500000f))))), (impulse(2.000000f,((UV.y+sin(((TIME*UV.y)*((((1.500000f-9.000000f)*0.500000f)*cos(3.000000f))*7.000000f))))+sin(UV.x)))),1);
}