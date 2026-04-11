class_name combat_state extends State

@export var NullState: State
@export var Movement: Movement
@export var CamMovement: CameraMovement

@export var Accel: float = 1
@export var Speed: float = 1

@onready var input_vector: Vector2 = Vector2.ZERO
@onready var mouse_vector: Vector2 = Vector2.ZERO

func enter():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	
func leave():
	print("left combat state")

func handle_movement(delta:float):
	## handle WASD inputs and move the player
	input_vector = Input.get_vector("right", "left", "back", "forward")
	if input_vector: 
		Movement.accelerate(Vector3(input_vector.x, 0, input_vector.y).rotated(
			Vector3.UP, PI+CamMovement.Pivot.rotation.y
		), Accel, Speed, delta)
	else:
		Movement.decelerate(Accel, delta)

func handle_inputs(event):
	if event is InputEventMouseMotion:
		CamMovement.rotate_by(Vector3(-event.relative.x, -event.relative.y, 0))
	
	## Debug mode: can leave the mouse capture to close the window by pressing "enter"
	if Input.is_action_pressed("ui_accept"):
		ParentEngine.change_state_to(NullState)
