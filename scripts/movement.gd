class_name Movement extends Node

@export var Body: CharacterBody3D

@export var ACCEL_PARAM: float = 1
@export var SPEED_PARAM: float = 1

@export var FRICT_PARAM: float = 1
@export var GRAV_PARAM:  float = -1

func accelerate(target: Vector3, accel: float, speed: float, delta: float) -> void:
	Body.velocity = lerp(Body.velocity, SPEED_PARAM * speed * target, ACCEL_PARAM * accel * delta)

func decelerate(accel: float, delta: float):
	Body.velocity = lerp(Body.velocity, Vector3.ZERO, FRICT_PARAM * accel * delta)
	
func stop_all_motion():
	Body.velocity = Vector3.ZERO
	
func fall(terminal_velocity: float, delta: float):
	Body.velocity.z = lerp(Body.velocity.z, terminal_velocity * GRAV_PARAM, delta)
