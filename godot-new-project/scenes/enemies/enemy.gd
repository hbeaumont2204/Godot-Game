extends Area2D

@onready var player = get_parent().get_node("Player")

# Find alternative to on body entered later
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.life_force_damage(20)
		queue_free()
		
func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("projectile"):
		area.queue_free()
		get_parent().queue_free() # delete slime
