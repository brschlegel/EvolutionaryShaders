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
     COLOR = vec4((impulse(8.000000f,(((((7f-((((UV.y/9f)-TIME)*sin(TIME))*cos((parabola(((1.500000f*cos(((UV.y-(((2.500000f*2.000000f)-((8.000000f-(impulse((parabola(UV.y,(TIME+sin(2.000000f)))),UV.y)))*sin((UV.x*cos(6f)))))-UV.y))+sin(2f))))+cos((UV.x-4.500000f))),((impulse((((UV.x*cos((5.000000f-1.000000f)))*2f)+cos(((parabola(UV.y,(2f*sin(((((((UV.x-((((UV.y-(parabola(UV.y,(TIME+UV.x))))+cos((impulse(5f,(TIME*sin(((impulse((UV.x+cos(((parabola((impulse(TIME,(5f*cos(TIME)))),((((parabola((5f+sin(TIME)),UV.y))/UV.y)-(5.000000f-UV.y))*sin(UV.y))))+sin(((parabola((impulse((UV.x+cos(((parabola((impulse(TIME,(5f*cos(6.000000f)))),UV.x))+sin((UV.y/0.500000f))))),UV.y)),(TIME*sin(TIME))))/1f))))),UV.y))+UV.x)))))))*sin(TIME))*cos(2.000000f)))*sin((5f*cos(TIME))))-UV.x)*sin((0.250000f*8.000000f)))*cos(TIME))/1f)))))+sin(10.000000f)))),(4.000000f/9f)))+UV.x))))))+cos((impulse(UV.y,(5f*cos(TIME))))))+cos(2f))-8.000000f)*cos(UV.y)))), (((TIME/(((impulse((TIME/(3.000000f/(parabola((((TIME-UV.x)-TIME)/(((((((UV.x+(impulse((TIME+TIME),TIME)))-(parabola(2.000000f,TIME)))-UV.y)/UV.y)+cos(((UV.y+cos((TIME*(TIME/((UV.x*2.000000f)+sin(UV.x))))))+(TIME/((7.000000f/UV.x)*cos((UV.y+sin(UV.x))))))))+cos(TIME))*cos((((UV.y/((impulse(((parabola((7.000000f-TIME),(1f+sin((UV.y/(impulse(((1f-6f)*cos((UV.y/UV.x))),(UV.x+cos(0.250000f)))))))))+cos((UV.y*(((impulse((UV.x+cos((UV.x*cos(UV.x)))),(impulse(0.500000f,3.000000f))))*(1.000000f*sin(UV.x)))/((((4.000000f+sin(8.000000f))-TIME)/(impulse(((impulse((5f/((TIME*TIME)/(parabola((((parabola((((UV.y-UV.x)-TIME)/(((((((UV.y+(impulse((TIME+TIME),TIME)))-5.000000f)-UV.y)/UV.y)+cos((((TIME-TIME)-TIME)+(TIME-(3.000000f*cos((UV.y+sin(UV.x))))))))+cos(TIME))*cos(((UV.x+TIME)/(UV.x+cos(UV.x)))))),(UV.y+sin(UV.x))))-TIME)/((impulse(UV.y,TIME))*cos((UV.x/(UV.x+cos(1f)))))),9.000000f)))),UV.x))*UV.y),UV.x)))*cos(UV.y)))))),TIME))*UV.y))+cos(1f))/(UV.x+cos(UV.x)))))),(UV.y+sin(UV.x)))))),3.000000f))*(impulse((UV.x+cos(UV.x)),(impulse(4.000000f,(1f*(TIME/(TIME*cos((UV.y-TIME))))))))))*cos((UV.y+cos((TIME+cos(UV.y)))))))+cos((TIME*(TIME/(UV.x*cos(UV.x))))))-TIME), 4.000000f,1);
}