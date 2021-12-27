extends Camera2D

const MOVE_SPEED = 300

class_name MainCamera

var _previousPosition: Vector2 = Vector2(0, 0);
var _moveCamera: bool = false;
var touch = false

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event: InputEvent):
	if touch:
		if event is InputEventMouseButton && event.button_index == BUTTON_LEFT:
			get_tree().set_input_as_handled();
			if event.is_pressed():
				_previousPosition = event.position;
				_moveCamera = true;
			else:
				_moveCamera = false;
		elif event is InputEventMouseMotion && _moveCamera:
			get_tree().set_input_as_handled();
			position += (_previousPosition - event.position);
			_previousPosition = event.position;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_pressed("ui_up") and position.y > 160:
		position.y -= MOVE_SPEED*delta	
	if Input.is_action_pressed("ui_down") and position.y < get_viewport_rect().size.y-160:
		position.y += MOVE_SPEED*delta
	if Input.is_action_pressed("ui_left") and position.x > 256:
		position.x -= MOVE_SPEED*delta
	if Input.is_action_pressed("ui_right") and position.x < get_viewport_rect().size.x-256:
		position.x += MOVE_SPEED*delta
		


func _on_Button4_pressed():
	touch=true
	position=Vector2(323,186)
	zoom=Vector2(0.5,0.5) # Replace with function body.


func _on_TouchScreenButton_pressed():
	if touch:
		touch=false
		zoom=Vector2(1,1) 
	else:
		touch=true
		position=Vector2(323,186)
		zoom=Vector2(0.5,0.5)
	
