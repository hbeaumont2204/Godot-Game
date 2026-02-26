extends Button

func _ready():
	text = "Exit"
	pressed.connect(_button_pressed)

func _button_pressed():
	print("Exited game")
	get_tree().quit() # Exits game
