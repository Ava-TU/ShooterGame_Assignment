extends Node3D

@onready var paintOneEmit = $CPUParticles3D

func _process(_delta: float) -> void:
	paintOneEmit.emitting = true
	
	if position.y < -5:
		queue_free()
		print("DeletedCanvas")
