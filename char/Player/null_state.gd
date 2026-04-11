class_name NullState extends State

@export var CombatState: State

func enter():
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

func leave():
	print("Null state left")

func handle_inputs(_event):
	if Input.is_action_pressed("ui_down"):
		ParentEngine.change_state_to(CombatState)
