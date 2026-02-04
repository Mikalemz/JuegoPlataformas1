extends CharacterBody2D


const SPEED = 125
const JUMP_VELOCITY = -300

@onready var animacion = $Sprite2D

var gemas=0
@onready var hud = get_node("/root/Mundo/CanvasLayer");

func add_gemas():
	gemas=+1
	hud.set_gemas(gemas)

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		animacion.flip_h=direction<0
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	if not is_on_floor() && velocity.y<0:
		animacion.play("Jump")
	elif direction !=0:
		animacion.play("Walk")
	else:
		animacion.play("Idle")
