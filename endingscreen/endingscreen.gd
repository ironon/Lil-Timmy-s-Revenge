extends Node


var time = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta;
	$TextureRect2.scale = Vector2(1 - 0.2*pow(sin(time), 2), 1 - 0.2*pow(sin(time), 2))
	$TextureRect2.rotation = sin(time)*0.05


func _on_button_pressed():
	get_tree().change_scene_to_file("res://titlescreen/titlescreen.tscn") # Replace with function body.
