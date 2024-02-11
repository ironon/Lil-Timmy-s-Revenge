extends Entity


func _physics_process(delta ):
	
	var move_vector = Vector2(0, 0)
	if Input.is_action_pressed("right"):
		
		move_vector = move_vector + Vector2(1, 0)
		$Character.flip_h = true
	if Input.is_action_pressed("left"):
		move_vector = move_vector + Vector2(-1, 0)
		$Character.flip_h = false;
	if Input.is_action_pressed("down"):
		move_vector = move_vector + Vector2(0, 1)
	if Input.is_action_pressed("up"):
		move_vector = move_vector + Vector2(0, -1)
	var a_velocity = move_vector.normalized() * speed
	super.good_move_and_collide(a_velocity)
#func _physics_process(delta):
	#if not is_multiplayer_authority(): return
#
	#velocity = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") * 500
	#move_and_slide()
