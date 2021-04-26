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
     COLOR = vec4(((TIME-((((UV.y/(parabola(UV.y,(TIME+UV.y))))+cos((impulse(5f,(TIME*sin((((UV.x+cos(((parabola((impulse(UV.y,(UV.x*cos(TIME)))),((((parabola((2.500000f+sin(TIME)),UV.y))+cos(UV.y))-((((parabola((5f+sin((UV.x*TIME))),(TIME*sin(TIME))))*cos((parabola(UV.x,((impulse(((((UV.x+cos(3.000000f))+1.000000f)+cos((parabola((parabola((TIME+sin(UV.y)),(8f*UV.y))),((parabola((((UV.x*sin(2.000000f))-(1.000000f+(impulse((((UV.y+cos(8.000000f))+cos(UV.y))-(((((((((UV.y/(parabola(UV.y,(TIME+UV.x))))+cos((impulse(5f,(TIME*sin(((impulse((UV.x+cos(9.000000f)),UV.y))+UV.x)))))))/((UV.y/(TIME+cos((1.750000f-4.500000f))))+cos((impulse(UV.x,TIME)))))+cos((UV.y/UV.y)))-7.000000f)-UV.y)*sin(UV.y))*cos(0.500000f))+cos(1.500000f))),UV.y))))-UV.y),(TIME+sin(TIME))))/0.250000f)))))+8.000000f),UV.y))+UV.x)))))-UV.x)-UV.y))*sin((6f/TIME)))))+sin((UV.x/1f)))))*cos(UV.y))+UV.x)))))))*sin(TIME))*cos(UV.x)))-(TIME+sin(2f))), (UV.y*sin((UV.x+cos((((UV.x+9.000000f)/((TIME-TIME)/(parabola((((impulse((UV.x+cos((UV.x*cos(UV.x)))),(impulse(0.500000f,6f))))-(UV.y/((impulse(((parabola((UV.y-TIME),(1f+sin(1.000000f))))+cos((((parabola(((4.500000f+7f)-((parabola(1.000000f,8.000000f))*UV.x)),(1f/TIME)))+cos(((parabola(1.000000f,5.000000f))*UV.x)))*(((impulse((UV.x+cos((UV.x*cos(UV.x)))),4.000000f))*(1.000000f*sin(3.000000f)))/((UV.y/UV.x)*cos((TIME+sin(UV.x)))))))),TIME))*UV.y)))/((((4.000000f+sin(8.000000f))-TIME)/(impulse(((impulse((2.500000f*((TIME*TIME)/((((parabola((((7.000000f-UV.x)-((((TIME-TIME)-TIME)/(impulse((UV.x*UV.y),UV.x)))*cos((TIME+sin(UV.x)))))/(((((((UV.y+(impulse((TIME+TIME),TIME)))-(parabola(4f,TIME)))-UV.y)/UV.y)+cos((((UV.y/((UV.x*(impulse(UV.x,UV.x)))*cos(7.000000f)))+cos((5f*((4.000000f*((UV.x+6f)/(UV.x+cos(1f))))/(UV.y+3.000000f)))))+(TIME-(6f*cos((UV.y+sin(UV.x))))))))+cos(TIME))*cos(((UV.x+TIME)/(UV.x+cos(UV.x)))))),(UV.y+sin(UV.x))))-TIME)/((impulse(UV.y,TIME))*cos((UV.x/(UV.x+cos(1f))))))+cos(9.000000f)))),UV.x))*UV.y),UV.x)))*cos(UV.y))),(0.500000f+sin(UV.x))))))*cos(8.000000f)))))), 8.000000f,1);
}