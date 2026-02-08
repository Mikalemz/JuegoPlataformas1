extends RigidBody2D

@onready var game_manager = %SistemaVidas


func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body.name == "Player"):
		var y_delta = position.y - body.position.y
		if (y_delta > 30):
			print("destruir")
			queue_free()
			body.jump()
		else:
			print("Quitar 1 vida")
			game_manager.decrease_health()
