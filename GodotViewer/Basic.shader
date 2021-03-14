shader_type canvas_item;
void fragment(){
	COLOR = vec4(UV.x *2f, UV.y,cos(TIME)+ .5f,1.0);
}
