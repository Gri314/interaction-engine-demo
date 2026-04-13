class_name ArmIK extends Node3D

@onready var Shoulder: Node3D = $shoulder
@onready var Elbow: Node3D = $elbow
@onready var Hand: Node3D = $hand

"""
Inverse Kinematics eblow:
	Unable to find a simple analytic solution that doesn't use the trig functions
	
	Updated solution in the google drive. 
"""

func update_elbow():
	## get midpoint of shoulder position and hand position
	pass
