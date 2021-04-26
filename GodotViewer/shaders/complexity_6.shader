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
     COLOR = vec4((impulse(UV.y,(((((7f-((((UV.y/9f)-TIME)*sin(TIME))*cos((parabola(((parabola(1.500000f,((UV.y-(((2.500000f*2.000000f)-((UV.x-((parabola(UV.y,(TIME*1.000000f)))*cos(UV.y)))*sin((UV.x*cos(6f)))))-UV.y))+sin(2f))))+cos((UV.x-4.500000f))),((impulse(((((TIME*sin(6.000000f))*cos((5.000000f-(((parabola((2.500000f+sin(TIME)),UV.y))+cos(UV.y))-((((parabola((5f+sin((UV.x*TIME))),(2f*sin(2.000000f))))*cos((parabola(UV.x,(((parabola(UV.x,UV.y))+sin(UV.y))+UV.x)))))-UV.x)-UV.y)))))*2f)+cos(((parabola(UV.y,(2f*sin(((UV.y*cos(TIME))/1f)))))+sin(10.000000f)))),(4.000000f/9f)))+UV.x))))))+cos(UV.y))+cos(2f))-UV.y)+sin(1f)))), (((TIME/(((impulse((TIME/(3.000000f/(parabola((((TIME-UV.x)-TIME)/(((((((UV.x+(impulse((TIME+TIME),TIME)))-(parabola(4f,TIME)))-UV.y)/UV.y)+cos(((UV.y+cos((2.500000f*(TIME/(9.000000f+6f)))))+(TIME/((7.000000f/UV.x)*cos((UV.y+sin(UV.x))))))))+cos(TIME))*cos((((UV.y/((impulse(((parabola((UV.y-TIME),(0.500000f+sin((UV.y/(impulse(((1f-6f)*cos((UV.y/UV.x))),(UV.x+cos(0.250000f)))))))))+cos((UV.y*(((impulse((UV.x+cos((UV.x*cos(UV.x)))),(impulse(0.500000f,1.500000f))))*(1.000000f*sin(UV.x)))/((((4.000000f+sin(8.000000f))-UV.x)/(impulse(((impulse((5f/((TIME*TIME)/((((parabola((((7.000000f-UV.x)-TIME)/((((5.000000f/UV.y)+cos((((UV.y/((UV.x*(impulse(UV.x,UV.x)))*cos((((UV.y-(TIME+cos(UV.x)))+UV.x)/UV.y))))+cos((5f*((UV.y*((UV.x+6f)/(UV.x+cos(1f))))/(UV.y+6f)))))+(TIME-(6f*cos((UV.y+sin(UV.x))))))))+cos(TIME))*cos(((UV.x+TIME)/(UV.x+cos(UV.x)))))),(UV.y+sin(UV.x))))-TIME)/((impulse(4.000000f,TIME))*cos((UV.x/(UV.x+cos(1f))))))+cos(9.000000f)))),UV.x))*UV.y),UV.x)))*cos(UV.y)))))),TIME))*UV.y))+cos(UV.x))/(UV.x+cos(UV.x)))))),(UV.y+sin(UV.x)))))),6f))*(impulse((UV.x+cos(UV.x)),(impulse(4.000000f,(1f*(TIME/(TIME*cos((UV.y-TIME))))))))))*cos((UV.y+cos((TIME+cos(UV.y)))))))+cos((TIME*TIME)))-TIME), (UV.x+sin(((4.000000f*cos(5.000000f))/(4.000000f+sin((parabola(6.000000f,1.000000f))))))),1);
}