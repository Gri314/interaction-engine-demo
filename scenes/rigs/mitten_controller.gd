class_name MittenController extends Node3D

func set_hand_state_grasping(value: bool) -> void:
	$open.visible = not value
	$grasping.visible = value

func _ready():
	set_hand_state_grasping(false)
