extends Node

var lives = 3

func decrease_health():
	lives-=1
	print(lives)
	if (lives == 0):
		get_tree().reload_current_scene()
