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
	var camera = get_node("Camera2D")
	camera.position=Vector2(640,360)
	camera.zoom=Vector2(1,1)
	

func _on_Button2_pressed():
	var camera = get_node("Camera2D")
	camera.position=Vector2(485,273)
	camera.zoom=Vector2(0.75,0.75)


func _on_Button3_pressed():
	var camera = get_node("Camera2D")
	camera.position=Vector2(323,186)
	camera.zoom=Vector2(0.5,0.5)


func _on_TouchScreenButton2_pressed():
	Transitions.fade_out(self, target, 1.5, Color.black)
