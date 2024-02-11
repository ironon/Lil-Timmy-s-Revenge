extends Entity

var attacking = 0 # -1 is retreating, 0 is idle, 1 is attacking
var attacking_entity: CharacterBody2D = null
var idle_position = null
func _ready():
	if get_node_or_null("Character") == null:
		set_level(0);
func set_level(num: int):
	var level = Global.PROGRESSION_SCENE[num][1].instantiate()
	level.name = "Character"
	add_child(level)
	set_editable_instance(level, true) ## there are no hacks in ba sing se move along this is perfectly valid
	level.get_node("CollisionShape2D").reparent(self)

	scale = Vector2(default_scale, default_scale);
	speed = (num) + 1
	food_score = num * 10



	
func touched_entity(entity: Entity):
	pass
func get_random_idle_point():
	return position + Vector2(randi_range(-10, 10), randi_range(-10, 10))
func _physics_process(delta):
	var bodies = $ViewDistance.get_overlapping_bodies()
	print(attacking)
	
	for body in bodies:
		if $ViewDistance.get_overlapping_bodies().has(attacking_entity):
			continue
		if body == self:
			# narsacistic area2d dude wtf
			continue
		if body is CharacterBody2D:
			#print(body)
			attacking_entity = body
			
			if (body.food_score > food_score):
				# run for your life
				attacking = -1
			else:
				# eat the poor weakling
				attacking = 1
	if attacking_entity != null:
	
		var movement_vector = (attacking_entity.position - position).normalized()
		if attacking == 1:
			move_and_collide(movement_vector * speed)
		else:
			move_and_collide(movement_vector * speed * -1)
	
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
	


