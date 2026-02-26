extends Area2D

var speed = 750
var isFlipped = false

@onready var player = get_parent().get_node("Player")

func _ready() -> void:
	isFlipped = player.get_flipped()

func _physics_process(delta):
	if !isFlipped:
		position += transform.x * speed * delta
	else:
		position -= transform.x * speed * delta

func _on_Projectile_body_entered(body):
	if body.is_in_group("Enemies"):
		body.queue_free() # Destroys any enemy it collides with 
	queue_free()
