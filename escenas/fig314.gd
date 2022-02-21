extends Node2D

var sound_has_played = true
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if !sound_has_played:
		$AudioStreamPlayer.play()
		sound_has_played=true
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	sound_has_played=false
