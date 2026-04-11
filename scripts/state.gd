class_name State extends Node

@export var key: String = "UnregisteredKeyValue"

@export var ParentEngine: State

func enter():
	pass ## what this state does when it is "entered"
	
func leave():
	pass ## what this state does whn it is "left"
	
func handle_inputs(event): 
	pass ## what inputs do while you are in this state
	
func handle_movement(delta: float):
	pass ## specifcially movement as a physics process
