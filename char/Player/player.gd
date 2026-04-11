class_name Player extends CharacterBody3D

@export var StateEngine: StateEngine

func _input(event):
	StateEngine.current_state.handle_inputs(event)

func _ready():
	print("Current state: ", StateEngine.current_state.key)

func _physics_process(delta):
	StateEngine.current_state.handle_movement(delta)
	
	self.move_and_slide()
