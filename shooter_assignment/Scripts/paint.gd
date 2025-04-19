extends CharacterBody3D

var speed = 2

func _process(delta):
	position += transform.basis * Vector3(0, 0, -speed) * delta
	
	if position.z < -75:
		queue_free()
