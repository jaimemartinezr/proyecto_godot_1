extends StaticBody2D

const tile_size: Vector2=Vector2(16,16)
var player_node
func _ready() -> void:
	player_node = get_node("/root/Game/Player")
func _on_area_2d_body_entered(body: Node2D) -> void:
	queue_free()

func _on_timer_timeout() -> void:
	if player_node.position.y - position.y > 0:
		if !$Up.is_colliding():
			global_position -= Vector2(0,1) * tile_size
		elif player_node.position.x - position.x >= 0 and !$Left.is_colliding():
			global_position -= Vector2(1,0) * tile_size
		elif !$Right.is_colliding():
			global_position -= Vector2(-1,0) * tile_size
	elif player_node.position.y - position.y < 0:
		if !$Down.is_colliding():
			global_position -= Vector2(0,-1) * tile_size
		elif player_node.position.x - position.x >= 0 and !$Left.is_colliding():
			global_position -= Vector2(1,0) * tile_size
		elif !$Right.is_colliding():
			global_position -= Vector2(-1,0) * tile_size
	elif player_node.position.x - position.x > 0:
		if !$Left.is_colliding():
			global_position -= Vector2(1,0) * tile_size
		elif player_node.position.y - position.y > 0 and !$Up.is_colliding():
			global_position -= Vector2(0,1) * tile_size
		elif !$Down.is_colliding():
			global_position -= Vector2(0,-1) * tile_size
	elif !$Right.is_colliding() and player_node.position.x - position.x < 0:
		global_position -= Vector2(-1,0) * tile_size
