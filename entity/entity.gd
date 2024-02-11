extends CharacterBody2D

class_name Entity
@export var food_score = 1
@export var speed = 3
@export var default_scale = 3 # scale is display only, doesnt affect gameplay

	
	
func touched_entity(entity: Entity):
	## called whenever two entities touched (could be two players, one player one enemy, any combination)
	print(name + " and" + entity.name + "collided! Please override me!")
	
func _physics_process(delta):
	$Character.scale = Vector2(default_scale + food_score, default_scale + food_score)
	

	
