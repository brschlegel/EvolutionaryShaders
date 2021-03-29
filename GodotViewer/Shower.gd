extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const shaderResource = preload("res://BasicSprite.tscn")
const textureSize = 64
export var num = 10
export var numRows = 2
export var string = "complexity"



# Called when the node enters the scene tree for the first time.
func _ready():
	
	var perRow = num / numRows
	
	var incrementX = get_viewport().size.x / (perRow+1)
	var incrementY = get_viewport().size.y / (numRows+ 1)
	for h in numRows:
		for n in perRow:
			var instance = shaderResource.instance()
		
			var shader = load("shaders/"+ string +"_" +str(n + (h * perRow))  + ".shader")
			var mat = instance.get_material().duplicate()
			instance.set_material(mat)
			instance.get_material().shader = shader
			instance.set_position(Vector2((n+1) * incrementX,(h+1) * incrementY))
			self.add_child(instance)
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
