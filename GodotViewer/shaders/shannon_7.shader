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
     COLOR = vec4(UV.x, ((5.000000f-4.000000f)*cos((7.000000f+sin((7.000000f*sin(((UV.y+cos(1.500000f))+((((TIME+8.000000f)+1.500000f)*sin((10.000000f+cos((((UV.x*cos((TIME*(8.000000f*sin((((parabola(((10.000000f+cos(1.500000f))+(((5.000000f+1.500000f)*sin((8.000000f+cos((((9.000000f/(((5.000000f+(5.000000f*sin(2.000000f)))/UV.x)*((6.000000f/(impulse(((10.000000f+2.000000f)+cos(4.000000f)),(UV.x*cos((TIME*(8.000000f*sin((((parabola(((10.000000f+cos(1.500000f))+(((5.000000f+1.500000f)*sin((8.000000f+cos((((9.000000f/(((5.000000f-(5.000000f*sin(2.000000f)))/UV.x)*((6.000000f/(impulse((2.000000f+cos(4.000000f)),3.000000f)))*sin((((parabola(9.000000f,6.000000f))+cos(((3.000000f+cos(((((6.000000f+2.000000f)+(5.000000f+cos(5.000000f)))*sin((10.000000f+cos(((((impulse(9.000000f,9.000000f))/(((5.000000f+4.000000f)/UV.x)*((6.000000f/(impulse((2.000000f+cos(4.000000f)),3.000000f)))*sin(TIME))))*(2.000000f*sin(8.000000f)))*sin((6.000000f+(2.000000f*cos((((10.000000f*cos(2.000000f))+cos(1.500000f))+((((TIME+UV.x)+1.500000f)*sin((10.000000f+cos((((UV.x*cos((6.000000f*(8.000000f*sin((((parabola(((UV.y+cos(0.750000f))+((((TIME+8.000000f)+UV.x)*sin((10.000000f+cos((((UV.x/((UV.x/1.000000f)*8.000000f))+cos((impulse(2.000000f,4.000000f))))*sin(((2.000000f+sin(10.000000f))+(2.000000f+sin(3.000000f)))))))))+sin(10.000000f))),(1.000000f+cos(8.000000f))))+cos((impulse((impulse(1.000000f,3.000000f)),(7.000000f*10.000000f)))))-5.000000f))))))*UV.y)*sin((6.000000f+3.500000f)))))))+sin(10.000000f))))))))))))+sin(10.000000f))))-(UV.x*10.000000f))))*cos(((9.000000f/((4.000000f*cos(1.000000f))*(8.000000f*sin((((parabola(UV.y,6.000000f))+cos(2.000000f))+sin((impulse((UV.x-((impulse((parabola(1.000000f,(7.000000f+sin(9.000000f)))),1.000000f))+cos((2.000000f*sin(3.000000f))))),1.250000f))))))))+cos((1.000000f+sin(10.000000f))))))))))*(10.000000f*sin(4.000000f)))*sin((6.000000f+(2.000000f*cos(4.000000f)))))))))+sin((5.000000f*sin(1.000000f))))),(1.000000f+cos(8.000000f))))+cos((7.000000f+sin(((7.000000f-3.000000f)*5.000000f)))))-5.000000f)))))))))*sin((((parabola(9.000000f,6.000000f))+cos(((3.000000f+cos(((((6.000000f+2.000000f)+(UV.y+cos(5.000000f)))*sin((10.000000f+cos(((((impulse(9.000000f,9.000000f))/(((5.000000f+8.000000f)/UV.x)*((6.000000f/(impulse((2.000000f+cos(4.000000f)),3.000000f)))*sin((7.000000f*cos((UV.x+cos((1.000000f+sin(10.000000f))))))))))*(2.000000f*sin(8.000000f)))*sin((6.000000f+((UV.y+cos(1.500000f))+((((TIME+8.000000f)+1.500000f)*sin((10.000000f+cos((((UV.x*cos((2.000000f*UV.y)))*UV.y)*sin((6.000000f+3.500000f)))))))+sin(10.000000f))))))))))+sin(10.000000f))))-(UV.x*10.000000f))))*cos(((9.000000f/(TIME*(8.000000f*sin((((parabola(2.000000f,6.000000f))+cos(2.000000f))+sin((impulse((UV.x-((impulse(8.000000f,TIME))+cos((2.000000f*sin(UV.x))))),1.250000f))))))))+cos((1.000000f+sin(10.000000f))))))))))*(10.000000f*sin(4.000000f)))*sin((6.000000f+(2.000000f*cos((((10.000000f+sin((6.000000f-1.000000f)))+cos(1.500000f))/9.000000f))))))))))+sin((5.000000f*sin(1.000000f))))),(1.000000f+cos(8.000000f))))+cos((impulse(UV.y,((7.000000f-3.000000f)*5.000000f)))))-5.000000f))))))*UV.y)*sin((6.000000f+3.500000f)))))))+sin(10.000000f))))))))), (impulse(4.000000f,3.000000f)),1);
}