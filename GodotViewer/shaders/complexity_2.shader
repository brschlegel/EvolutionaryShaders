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
     COLOR = vec4((impulse(UV.y,(((((7f-((((UV.y/9f)-TIME)*sin(TIME))*cos((parabola(((1.500000f*cos(((UV.y-(((2.500000f*2.000000f)-((8.000000f-(impulse((parabola(UV.y,(TIME+sin(2.000000f)))),((((UV.y/(7f-(impulse(UV.x,UV.x))))-((((7f-(((8.000000f-(impulse(2f,UV.y)))*sin((UV.x*6f)))*cos((parabola(((1.500000f*cos(1f))+cos(((((((UV.y/2.250000f)-UV.x)*sin((UV.x*cos(6f))))*cos((parabola(((3f*cos(TIME))+cos((3.500000f-9f))),((impulse((((9f+cos(3.000000f))/UV.x)-UV.x),UV.y))+UV.x)))))*cos(((UV.x+cos(UV.y))+sin(UV.y))))*cos(TIME)))),UV.x)))))*UV.x)*(TIME*10f))-UV.y))-5.000000f)-(TIME+sin(UV.x))))))*sin((UV.x*cos(6f)))))-UV.y))+sin(UV.x))))+cos((UV.x-4.500000f))),((impulse((TIME+cos(((parabola(UV.y,(2f*sin(((((((2.000000f-((((UV.y-(parabola(UV.y,(TIME+UV.x))))+cos((impulse(5f,(TIME*sin(((impulse((UV.x+cos(((parabola((impulse(TIME,(5f*cos(TIME)))),((((parabola((5f+sin(TIME)),UV.y))/UV.y)-(5.000000f-UV.y))*sin(UV.y))))+sin(((parabola((impulse((UV.x+cos(((parabola((impulse(TIME,(5f*cos(TIME)))),((UV.x-((((parabola((5f+sin((((TIME+sin(TIME))+cos(((TIME/(7f-9f))+sin(UV.y))))*TIME))),(2f*sin(UV.x))))*cos((parabola(UV.y,((impulse(UV.x,UV.y))+UV.x)))))-UV.x)-UV.y))*sin((6f/1f)))))+sin((UV.y/0.500000f))))),UV.y)),(TIME*sin(TIME))))/1f))))),UV.y))+UV.x)))))))*sin(TIME))*cos(2.000000f)))*sin(UV.y))-UV.x)*sin((0.250000f*8.000000f)))*cos(TIME))/1f)))))+sin(5.000000f)))),(4.000000f/9f)))+UV.x))))))+cos((impulse(UV.y,(5f*cos(TIME))))))+cos(2f))-8.000000f)+sin(UV.y)))), (((TIME/(((impulse((TIME/(3.000000f/(parabola((((impulse(TIME,UV.x))-TIME)/(((((((UV.x+TIME)-(parabola(4f,TIME)))-UV.y)/UV.y)+cos(((3.000000f+cos((2.500000f*(TIME/(9.000000f+6f)))))+(TIME/((7.000000f/UV.x)*cos((UV.y+sin(UV.x))))))))+cos(TIME))*cos((((UV.y/((impulse(((parabola((UV.y-TIME),(1f+sin((UV.y/(impulse(((1f-6f)*cos((UV.y/UV.x))),(UV.x+cos(0.250000f)))))))))+cos((UV.y*3.000000f))),TIME))*UV.y))+cos(UV.y))/(UV.x+cos(UV.x)))))),(UV.y+sin(UV.x)))))),6f))*(impulse((UV.x+cos(UV.x)),(impulse(4.000000f,(1f*(TIME/(TIME*cos(UV.x)))))))))*cos((UV.y+cos((TIME+cos(UV.y)))))))+cos((9.000000f*(TIME/(UV.x*cos(UV.x))))))-TIME), 3.000000f,1);
}