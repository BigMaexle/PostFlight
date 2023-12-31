class_name Airplane
extends CharacterBody3D
## Airplane


# KTAS
var airspeed_vec: Vector3

#GS
var groundspeed_vec: Vector3

# Wind
var wind_vec: Vector3


# Called when the node enters the scene tree for the first time.
func _ready():
	set_up_initial_velocity(Vector3(1,0,0))
	pass # Replace with function body.


func _process(delta):
	pass
	
func _physics_process(delta):
	
	wind_vec = get_current_wind (position)
	
	groundspeed_vec = calculate_ground_speed (airspeed_vec,wind_vec)
	
	# move aircraft along groundspeed
	move_and_collide(groundspeed_vec * delta)
	
## Setting up initial velocity of the Airplane
func set_up_initial_velocity(init_airspeed: Vector3):
	
	airspeed_vec = init_airspeed

func calculate_ground_speed(airspeed: Vector3, wind: Vector3):
	
	return airspeed + wind
	
func get_current_wind(pos: Vector3):
	
	return Vector3.ZERO
