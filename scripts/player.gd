extends CharacterBody2D

const tile_size: Vector2=Vector2(16,16)

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_up") and !$Up.is_colliding():
		_move(Vector2(0,1))
	elif Input.is_action_just_pressed("ui_down") and !$Down.is_colliding():
		_move(Vector2(0,-1))
	elif Input.is_action_just_pressed("ui_left") and !$Left.is_colliding():
		_move(Vector2(1,0))
	elif Input.is_action_just_pressed("ui_right") and !$Right.is_colliding():
		_move(Vector2(-1,0))

func _move(dir: Vector2):
	global_position -= dir * tile_size
