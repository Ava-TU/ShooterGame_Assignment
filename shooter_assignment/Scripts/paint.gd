extends Area3D

var speed = 5

func _process(delta):
	position += transform.basis * Vector3(0, 0, -speed) * delta
	
	if position.z < -75:
		queue_free()


func _on_body_entered(_body: Node3D ) -> void:
	print ("HIT")
	queue_free()
