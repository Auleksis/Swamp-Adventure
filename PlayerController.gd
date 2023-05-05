extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var click_position = Vector2(0, 0)

export var cell_size = 32


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _physics_process(delta):
	if Input.is_action_just_pressed("mouse_left_click"):
		click_position = get_global_mouse_position()
		click_position /= cell_size
		click_position.x = floor(click_position.x)
		click_position.y = floor(click_position.y)
		
		position = Vector2(click_position.x * cell_size + cell_size / 2, click_position.y * cell_size + cell_size / 2)
		
		print(click_position)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
