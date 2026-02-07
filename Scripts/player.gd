extends CharacterBody2D


const SPEED = 125
const JUMP_VELOCITY = -400

var gemas=0
var _muerto:bool

signal personaje_muerto

@export var area_2d: Area2D
@export var material_rojo_muerte: ShaderMaterial

@onready var animacion = $Sprite2D
@onready var hud = get_node("/root/Mundo/UI_Gemas");
@onready var jump_sound=$AudioStreamPlayer2D


func ready():
	add_to_group("personajes")
	area_2d.body_entered.connect(_on_area_2d_body_entered)
	

func add_gemas():
	gemas+=1
	hud.set_gemas(gemas)

func _physics_process(delta: float) -> void:
	if _muerto:
		return
	
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("saltar") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		jump_sound.play()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("izquierda", "derecha")
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


func _on_area_2d_body_entered(body: Node2D) -> void:
	_muerto = true
	animacion.stop()
	animacion.modulate = Color.RED
	personaje_muerto.emit()
	
	await get_tree().create_timer(0.5).timeout
	get_tree().reload_current_scene()
	
	
func jump():
	velocity.y = JUMP_VELOCITY
