extends Area2D


@onready var animated_sprite=$AnimatedSprite2D
@onready var colision=$CollisionShape2D
@onready var pickup_sound=$AudioStreamPlayer2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		body.add_gemas()
		animated_sprite.visible=false
		colision.disabled=true
		
		pickup_sound.play()
		pickup_sound.finished.connect(_on_sound_finished)
		
func _on_sound_finished():		
		queue_free()
