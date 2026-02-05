extends CanvasLayer


@onready var gemas_label = $Control/Label


func set_gemas(amount):
	gemas_label.text=str(amount)
