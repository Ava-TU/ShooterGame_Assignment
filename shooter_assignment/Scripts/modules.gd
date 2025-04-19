extends Node3D

@onready var level = $"../"
var speed = 3

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.z += speed * delta
	if position.z > 25:
		level.SpawnModule(position.z + (level.amount * level.offset))
		queue_free()


func _on_hit_box_area_entered(area: Area3D) -> void:
	print ("Paint")
	queue_free()
