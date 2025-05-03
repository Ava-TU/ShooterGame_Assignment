extends Node3D

@onready var paintOneEmit = $CPUParticles3D

func _process(delta: float) -> void:
	print(global_position.y)
	paintOneEmit.emitting = true
	
	if position.y < -5:
		queue_free()
		print("DeletedCanvas")
