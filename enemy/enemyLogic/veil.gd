extends Node

var pointsoffset = [0, 0]
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pointsoffset += [4,3] 
	


func _on_collision_polygon_2d_tree_entered():
	$Character.scale.x(2,2)
	
	 # Replace with function body.
