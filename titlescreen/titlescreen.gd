extends Control



var time = 0;
# Called when the node enters the scene tree for the first time.


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta;
	$TextureRect2.scale = Vector2(8 - 1*pow(sin(time), 2), 8 - 1*pow(sin(time), 2))
	$TextureRect2.rotation = sin(time)*0.05



func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://main.tscn")  # Replace with function body.


func _on_info_button_pressed():
	get_tree().change_scene_to_file("res://infoscreen/infoscreen.tscn") # Replace with function body.
