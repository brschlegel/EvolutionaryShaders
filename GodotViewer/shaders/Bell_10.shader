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
     COLOR = vec4((4.000000f+sin(1.000000f)), (((TIME-UV.y)+cos((parabola(UV.x,1.000000f))))*cos(((((UV.y+TIME)*5.000000f)+sin(2.000000f))+cos((7.000000f+cos(2.000000f)))))), (parabola(1.000000f,TIME)),1);
}