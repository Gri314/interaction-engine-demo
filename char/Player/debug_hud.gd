extends Control

@onready var dt1 = $HBoxContainer/VBoxContainer2/TextEdit
@export var Body: CharacterBody3D
@export var Cam: Node3D

func _process(delta):
	dt1.text = str(Body.position) + "\n" + str(Body.velocity) + "\n" + str(Cam.rotation)
