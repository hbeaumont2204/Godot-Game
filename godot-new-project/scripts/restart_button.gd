extends Button

func _ready():
	text = "Restart"
	pressed.connect(_button_pressed)

func _button_pressed():
	print("Restart button pressed")
	get_tree().paused = false
	get_tree().reload_current_scene()
