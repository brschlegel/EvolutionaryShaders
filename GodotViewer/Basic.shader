shader_type canvas_item;
void fragment(){
	COLOR = vec4(UV,cos(TIME)+ .5,1.0);
}
