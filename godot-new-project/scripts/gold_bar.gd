extends Area2D

func _on_body_entered(body: Node2D) -> void:
	print("Gold Bar added")
	if body.is_in_group("player"):
		body.add_gold()
		queue_free() # Remove object
