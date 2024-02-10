extends Control



var time = 0;
# Called when the node enters the scene tree for the first time.


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta;
	$infoButton.scale = Vector2(3*pow(sin(time), 2), 3*pow(sin(time), 2))



func _on_play_button_pressed():
	get_tree().change_scene("res://player/game.tscn")  # Replace with function body.


func _on_info_button_pressed():
	get_tree().change_scene("res://player/info.tscn") # Replace with function body.
