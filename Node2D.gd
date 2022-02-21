extends Node2D

export(String, FILE, "*.tscn") var target #variable que guarrda la escena main, para cambiarr de escena

var num = 0
var com = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#Ajustes de zoom, segun el boton seleccionado, se ajusta la posicion y la cantidad de zoom

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


func _on_TouchScreenButton2_pressed(): #para cambiar de escena cuando se presiona el boton para ayuda
	Transitions.fade_out(self, target, 1.5, Color.black)


func _on_Button5_pressed(): #control de zoom con la combinacion ctrl + rueda del mouse
	if Input.is_action_pressed("ctrl"):
		var camera = get_node("Camera2D")
		var zoom = camera.get_zoom()
		if(zoom[0]>0.5):
			zoom[0]-=0.1
			zoom[1]-=0.1
			var pos = get_global_mouse_position()
			camera.zoom=zoom
			camera.position=pos


func _on_Button6_pressed():
	if Input.is_action_pressed("ctrl"):
		var camera = get_node("Camera2D")
		var zoom = camera.get_zoom()
		if(zoom[0]<1.0):
			zoom[0]+=0.1
			zoom[1]+=0.1
			var pos = get_global_mouse_position()
			camera.zoom=zoom
			camera.position=pos
