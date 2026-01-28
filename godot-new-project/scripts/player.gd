extends CharacterBody2D


const SPEED = 100.0
const JUMP_VELOCITY = -300.0

const life_force_max = 180
var life_force = 180

var time = 0.0 # Time taken by the player

func restore_life_force() -> void:
	life_force = life_force_max

func life_force_drain(delta: float) -> void:
	life_force = life_force - delta
	#if life_force <= 0:
		# Game over
	

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
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
