extends Node3D

@onready var level = $"../"
var speed = 5

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.z += speed * delta
	if position.z > 25:
		level.SpawnModule(position.z + (level.amount * level.offset))
		queue_free()
