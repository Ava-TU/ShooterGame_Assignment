extends Node3D


func _process(delta: float) -> void:
	print(global_position.y)
	if position.y < -5:
		queue_free()
		print("DeletedCanvas")
