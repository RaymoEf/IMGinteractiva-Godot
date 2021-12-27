extends Node2D


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
	var sprite = get_node("Controles")
	var boton = get_node("Button")
	var mapa=get_node("CapturaDePantalla2021-12-13222626")
	var camara=get_node("Node2D")
	camara.visible=true
	mapa.visible=true
	sprite.visible=false
	boton.visible=false
	
