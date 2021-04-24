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
     COLOR = vec4((((((10.000000f+sin(8.000000f))+1.000000f)+cos(1.000000f))/9.000000f)*sin(((4.000000f-TIME)*cos(4.000000f)))), ((impulse(((UV.y+cos((1.000000f*cos((4.000000f+cos(UV.x))))))/TIME),((UV.y+cos(UV.y))*cos(((8.000000f*sin((TIME+sin(UV.x))))-(4.000000f*(4.000000f+(TIME*cos(UV.y)))))))))-(TIME*sin(TIME))), UV.x,1);
}