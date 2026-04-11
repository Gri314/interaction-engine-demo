class_name CameraMovement extends Node

@export var Pivot: Node3D
@export var SENS_DAMPNER: float = 0.01

func rotate_by(amount: Vector3):
	amount = amount * SENS_DAMPNER
	Pivot.rotate_y(amount.x)
	Pivot.rotate_object_local(Vector3.RIGHT, amount.y)
	Pivot.rotate_z(amount.z)
