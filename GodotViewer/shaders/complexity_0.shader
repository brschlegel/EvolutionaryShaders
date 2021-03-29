shader_type canvas_item;
void fragment(){
     COLOR = vec4((((4f-(UV.y+cos((6f+sin(5f)))))/((5f-(UV.x+cos(3f)))*sin(2f)))*cos((2f/(UV.y/5f)))), (5.000000f+cos(1.000000f)), ((4f*sin(((1f/(10f*(10.000000f+cos(8f))))+cos((((8f*sin(UV.x))*cos((3f+cos(4.000000f))))*((UV.y-UV.y)+cos((10f-UV.y))))))))+2f),1);
}