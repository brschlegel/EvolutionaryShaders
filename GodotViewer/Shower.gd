extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const shaderResource = preload("res://BasicSprite.tscn")
const textureSize = 64
export var num = 10
export var numRows = 2
export var string = "complexity"
var perRow
var matrix = []


# Called when the node enters the scene tree for the first time.
func _ready():
	
	perRow = num / numRows
	
	var incrementX = get_viewport().size.x / (perRow+1)
	var incrementY = get_viewport().size.y / (numRows+ 1)
	for h in numRows:
		matrix.append([])
		for n in perRow:
			var instance = shaderResource.instance()
			matrix[h].append(instance)
			var shader = load("shaders/"+ string +"_" +str(n + (h * perRow))  + ".shader")
			var mat = instance.get_material().duplicate()
			instance.set_material(mat)
			instance.get_material().shader = shader
			instance.set_position(Vector2((n+1) * incrementX,(h+1) * incrementY))
			self.add_child(instance)
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_OptionButton_item_selected(index):
	var strings = ["shannon", "Bell", "sym", "complexity"]
	for x in numRows:
		for y in perRow:
			var shader = load("shaders/"+ strings[index] +"_" +str(y + (x * perRow))  + ".shader")
			var mat = matrix[x][y].get_material().duplicate()
			matrix[x][y].set_material(mat)
			matrix[x][y].get_material().shader = shader
			
	pass # Replace with function body.
