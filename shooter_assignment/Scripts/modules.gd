extends Node3D

@onready var level = $"../"
var speed = 3
var score = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.z += speed * delta
	if position.z > 25:
		level.SpawnModule(position.z + (level.amount * level.offset))
		queue_free()


func _on_hit_box_area_entered(_area: Area3D) -> void:
	print ("Paint 1")
	queue_free()
	score += 100
	print (score)


func _on_area_3d_area_entered(_area: Area3D) -> void:
	print ("Paint 2")
	queue_free()


func _on_hit_box_3_area_entered(_area: Area3D) -> void:
	print ("Paint 3")
	queue_free()


func _on_hit_box_4_area_entered(_area: Area3D) -> void:
	print ("Paint 4")
	queue_free()
