extends Entity

var attacking = 0 # -1 is retreating, 0 is idle, 1 is attacking
var attacking_entity: CharacterBody2D = null

func _ready():
	if get_node_or_null("Character") == null:
		set_level(0);
func set_level(num: int):
	var level = Global.PROGRESSION_SCENE[num][1].instantiate()
	level.name = "Character"
	add_child(level)
	level.scale = Vector2(default_scale, default_scale);
	level.speed = Global.PROGRESSION_SCENE[num][2]



	
func touched_entity(entity: Entity):
	pass
func _physics_process(delta):
	var bodies = $ViewDistance.get_overlapping_bodies()
	
	attacking = 0
	for body in bodies:
		if body == self:
			# narsacistic area2d dude wtf
			continue
		if body is CharacterBody2D:
			#print(body)
			attacking_entity = body
			if body.get_script() == null:
				## i do not know how this edge case happens but yk frick it
				print(body.get_children())
				continue
			if (body.food_score > food_score):
				# run for your life
				attacking = -1
			else:
				# eat the poor weakling
				attacking = 1
	if attacking_entity != null:
		print("Attacking!")
		var movement_vector = (attacking_entity.position - position).normalized()
		move_and_collide(movement_vector * speed)
			
#func b(delta ):
	#var move_vector = Vector2(0, 0)
	#if Input.is_action_pressed("right"):
		#move_vector = move_vector + Vector2(1, 0)
		#$Character.flip_h = true
	#if Input.is_action_pressed("left"):
		#move_vector = move_vector + Vector2(-1, 0)
		#$Character.flip_h = true
	#if Input.is_action_pressed("down"):
		#move_vector = move_vector + Vector2(0, 1)
	#if Input.is_action_pressed("up"):
		#move_vector = move_vector + Vector2(0, -1)
	#move_and_collide(move_vector.normalized() * speed)
#func _physics_process(delta):
	#if not is_multiplayer_authority(): return
#
	#velocity = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") * 500
	#move_and_slide()
	


