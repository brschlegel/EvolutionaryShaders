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
     COLOR = vec4((impulse(UV.y,(((((7f-((((UV.y/9f)-TIME)*sin(TIME))*cos((parabola(((1.500000f*cos(((UV.y-(((2.500000f*UV.y)-((8.000000f-(impulse((parabola(UV.y,(TIME+sin(2.000000f)))),((((UV.y/(7f-(impulse(UV.x,UV.x))))-((((7f-(((UV.x-(impulse(5f,UV.y)))*sin((UV.x*6f)))*cos((parabola(((1.500000f*cos(1f))+cos(TIME)),UV.x)))))*UV.x)*(TIME*10f))-UV.y))-TIME)-(TIME+sin(UV.x))))))*sin((UV.x*cos(6f)))))-UV.y))+sin(2f))))+cos((UV.x-4.500000f))),((impulse(((((TIME*sin(6.000000f))*cos((5.000000f-(((parabola((2.500000f+sin(5.000000f)),UV.y))+cos(UV.y))-((((parabola((5f+sin((UV.x*TIME))),(2f*sin(2.000000f))))*cos((parabola(UV.x,((impulse(UV.x,TIME))+UV.x)))))-UV.x)-UV.y)))))*2f)+cos(((parabola(UV.y,(2f*sin(((((((2.000000f-((((UV.y-(parabola(UV.y,(TIME+UV.x))))+cos((impulse(5f,(TIME*sin(((impulse((UV.x+cos(((parabola((impulse(TIME,(5f*cos(TIME)))),((((parabola((5f+sin(TIME)),UV.y))/UV.y)-(5.000000f-UV.y))*sin((((8.000000f-(impulse(5f,UV.y)))*sin((UV.x*6f)))*cos((parabola(((1.500000f*cos(1f))+cos(((((((UV.y/2.250000f)-UV.x)*sin((UV.x*cos(6f))))*cos((parabola(((3f*cos(TIME))+cos((UV.y-9f))),(UV.y+UV.x)))))*cos((parabola(((((((TIME*sin(3.000000f))*cos(5.000000f))+2f)+sin(((parabola((5f+sin((UV.y/9f))),(2f*sin(((TIME/(7f-9f))+sin(UV.y))))))+sin(((parabola((TIME-UV.y),(((UV.y*sin((UV.x*cos(6f))))*cos((parabola((1.500000f*cos(((UV.y-(((2.000000f*UV.x)-((8.000000f-(impulse((parabola((4.500000f-UV.y),(TIME+sin(2.000000f)))),UV.y)))*sin((UV.x*cos(6f)))))-UV.y))+sin(2f)))),((impulse(((6.000000f+2f)+cos(((parabola((5f*sin((((TIME+sin(TIME))+cos(((7.000000f+cos((0.625000f+sin((impulse(UV.x,(8.000000f*sin(1.000000f))))))))/((impulse(1.250000f,2f))*cos(TIME)))))*TIME))),(2f*sin((6f/1f)))))+sin(8.000000f)))),(UV.y/9f)))-(UV.y+cos(6.000000f)))))))+sin(UV.x))))/0.500000f)))))*cos(TIME))+cos(UV.y)),UV.y))))*cos(TIME)))),UV.x))))))))+sin(((parabola((impulse((UV.x+cos(((parabola((impulse(TIME,UV.x)),((UV.x-((((parabola((5f+sin((((TIME+sin(10.000000f))+cos(((TIME/(7f-9f))+sin(UV.y))))*TIME))),(2f*sin((6f/1f)))))*cos((parabola(UV.y,((impulse(UV.x,UV.y))+UV.x)))))-UV.x)-UV.y))*sin((6f/1f)))))+sin((UV.y/0.500000f))))),UV.y)),(TIME*sin(TIME))))/1f))))),UV.y))+UV.x)))))))*sin(TIME))*cos(2.000000f)))*sin(UV.y))-UV.x)*sin((0.250000f*8.000000f)))*cos(TIME))/1f)))))+sin(10.000000f)))),(4.000000f/9f)))+UV.x))))))+cos((impulse(UV.y,(5f*cos(TIME))))))+cos(2f))-8.000000f)+sin(UV.y)))), (((TIME/(((impulse((TIME/(3.000000f/(parabola((((impulse(TIME,UV.x))/TIME)/(((((((UV.x+(impulse((TIME+TIME),TIME)))-(parabola(4f,TIME)))-UV.y)/UV.y)+cos(((UV.y+cos((2.500000f*(TIME/(9.000000f+6f)))))+(TIME/((7.000000f/UV.x)*cos((UV.y+sin(UV.x))))))))+cos(TIME))*cos((((UV.y/((impulse(((parabola((UV.y-TIME),(1f+sin((UV.y/(impulse(((1f-6f)*cos((UV.y/UV.x))),(UV.x+cos(0.250000f)))))))))+cos((UV.y*(((impulse((UV.x+cos((UV.x*cos(UV.x)))),(impulse(0.500000f,3.000000f))))*(UV.x*sin(UV.x)))/(((UV.x+cos((((((2.500000f*sin(8.000000f))*cos((parabola(UV.x,TIME))))/10.000000f)+cos((5f*(impulse(UV.y,(UV.y+6f))))))+(TIME/(6f*cos((UV.y+sin(UV.x))))))))+cos(TIME))*cos(((UV.x+TIME)/(UV.x+cos(UV.x))))))))),TIME))*UV.y))+cos(1f))/(UV.x+cos(UV.x)))))),(UV.y+sin(UV.x)))))),6f))*(impulse((UV.x+cos(UV.x)),(impulse(UV.x,(1f*(TIME/(TIME*cos((UV.y-TIME))))))))))*cos((UV.y+cos((TIME+cos(UV.y)))))))+cos((TIME*(TIME/(UV.x*cos(UV.x))))))-TIME), 10.000000f,1);
}