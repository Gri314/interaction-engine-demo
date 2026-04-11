class_name StateEngine extends State

@export var current_state: State

func change_state_to(new_state):
	current_state.leave()
	current_state = new_state
	new_state.enter()
