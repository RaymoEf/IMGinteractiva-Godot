extends Node2D

export(String, FILE, "*.tscn") var target


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	Transitions.fade_out(self, target, 1.5, Color.black)


func _on_Timer_timeout():
	Transitions.fade_out(self, target, 1.5, Color.black)
	
