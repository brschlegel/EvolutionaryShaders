shader_type canvas_item;
void fragment(){
     COLOR = vec4((UV.x-(((((TIME/7f)*sin(6f))+sin(UV.y))*sin((TIME/(UV.y+cos(10f)))))*cos((((((((((2.000000f-(TIME+sin(TIME)))*cos(7f))-3f)-(TIME+sin(10.000000f)))*cos((((((TIME/7f)*sin(6f))+sin(UV.y))*sin(UV.x))*cos((((((((((2.000000f-(TIME+sin((1.000000f*sin(6.000000f)))))*cos(7f))-3f)-(TIME+sin(10.000000f)))*cos(7f))-(3.000000f+sin(9.000000f)))-(UV.y+sin(9f)))+((TIME/TIME)*cos(((2.000000f-6.000000f)*10.000000f))))*(9.000000f/6.000000f))))))-(UV.x+sin(9.000000f)))+(((8f-UV.x)*cos((6.000000f-(UV.y*1.000000f))))+sin(9f)))+((TIME/((1.000000f+sin((9f+cos(10f))))*sin(4.000000f)))*cos((3.000000f*10.000000f))))*8f)))), ((((9.000000f*sin(9.000000f))/4.000000f)/(((UV.y+sin((UV.y*sin(((2f+cos(UV.y))+sin(((6f+1.000000f)*sin((UV.y*cos(7f))))))))))*cos(((UV.x+cos(6f))+sin(((TIME+TIME)*sin((6.000000f+8.000000f)))))))-(9f+cos(10f))))*sin(UV.x)), (8.000000f*sin(6.000000f)),1);
}