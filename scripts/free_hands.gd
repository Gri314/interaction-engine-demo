class_name FreeHandsState extends StateEngine

"""
Free Hands 
Player State
Requires M&K input

Description:
	Mouse movement
	Contextual areas of things

when this state is entered:
	- point the gun barrel up
	- bring up the left hand
	- free the mouse

when this state is left:
	- nothing

inputs this state will handle:
	- mouse movement:
		move around a cursor
	- lclick:
		interact with objects
		draw on the "spell tablet"
	- rclick:
		point gun vaguely at location
		"precision aim"
	- WASD:
		move slowly around
"""

func enter():
	pass
	## tilt up the weapon
	
func leave():
	pass ## what this state does whn it is "left"
	
func handle_inputs(event): 
	pass ## what inputs do while you are in this state
	
func handle_movement(delta: float):
	pass ## specifcially movement as a physics process
