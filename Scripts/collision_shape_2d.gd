extends CollisionShape2D

func _on_body_shape_entered(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int) -> void:
	if (body.name == "Player"):
		var y_delta = position.y - body.position.y
		if (y_delta > 30):
			print("destruir")
			queue_free()
			body.jump()
		else:
			print("Quitar 1 vida")
			body.queue_free()
