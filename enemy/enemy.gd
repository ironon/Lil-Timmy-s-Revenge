extends CharacterBody2D

@export var food_score = 1
@export var speed = 3

func _ready():
	#set_multiplayer_authority(name.to_int())
	#$DisplayAuthority.visible = is_multiplayer_authority()
	pass
func set_level(num: int):
	var level = Global.PROGRESSION[num]
func _process(delta):
	$Sprite2D.scale = Vector2(food_score, food_score)
	
	
func _physics_process(delta ):
	var move_vector = Vector2(0, 0)
	if Input.is_action_pressed("right"):
		move_vector = move_vector + Vector2(1, 0)
		$Sprite2D.flip_h = true
	if Input.is_action_pressed("left"):
		move_vector = move_vector + Vector2(-1, 0)
		$Sprite2D.flip_h = true
	if Input.is_action_pressed("down"):
		move_vector = move_vector + Vector2(0, 1)
	if Input.is_action_pressed("up"):
		move_vector = move_vector + Vector2(0, -1)
	move_and_collide(move_vector.normalized() * speed)
#func _physics_process(delta):
	#if not is_multiplayer_authority(): return
#
	#velocity = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") * 500
	#move_and_slide()
