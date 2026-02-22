extends AudioStreamPlayer2D

# Basic audio playback
#extends Node2D

func _ready():
	# Access the AudioStreamPlayer node and play the sound
	$AudioStreamPlayer.play()
