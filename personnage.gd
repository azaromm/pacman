extends CharacterBody2D

@export var speed = 400 # How fast the player will move (pixels/sec).


var screen_size

func _ready():
	screen_size = get_viewport_rect().size
	
func _process(delta):
	var input_vector = Vector2.ZERO

	if Input.is_action_pressed("move_right"):
		input_vector.x += 1
	if Input.is_action_pressed("move_left"):
		input_vector.x -= 1
	if Input.is_action_pressed("move_down"):
		input_vector.y += 1
	if Input.is_action_pressed("move_up"):
		input_vector.y -= 1

	input_vector = input_vector.normalized()

	velocity = input_vector * speed

	move_and_slide()
