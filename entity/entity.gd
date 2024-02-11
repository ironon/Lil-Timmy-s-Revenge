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

func die():
	queue_free()
func good_move_and_collide(velocity: Vector2):
	var result = move_and_collide(velocity)
	if result == null:
		return
	
	if result.get_collider() is CharacterBody2D:
		if result.get_collider().food_score > food_score:
			result.get_collider().food_score += food_score
			die()
		else:
			food_score += result.get_collider().food_score
			result.get_collider().die()
			
	
