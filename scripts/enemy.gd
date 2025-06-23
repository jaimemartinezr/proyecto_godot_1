extends StaticBody2D

const tile_size: Vector2=Vector2(16,16)

func _on_area_2d_body_entered(body: Node2D) -> void:
	queue_free()

func _on_timer_timeout() -> void:
	if !$Up.is_colliding():
		global_position -= Vector2(0,1) * tile_size
