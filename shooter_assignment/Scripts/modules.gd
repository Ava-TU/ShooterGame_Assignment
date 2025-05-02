extends Node3D

@onready var level = $"../"

var speed = 3


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	position.z += speed * delta
	if position.z > 15:
		level.SpawnModule(position.z + (level.amount * level.offset))
		print("Canvas Delete")
		Global.health -= 1
		print(Global.health)
		queue_free()
		
		if Global.health <= 0:
			get_tree().change_scene_to_file("res://Scenes/game_over.tscn")



func _on_hit_box_area_entered(_area: Area3D) -> void:
	print ("Paint 1")
	if _area.is_in_group("Projectiles"):
		Global.score += 100
		print(Global.score)
		queue_free()
	else:
		queue_free()


func _on_area_3d_area_entered(_area: Area3D) -> void:
	print ("Paint 2")
	if _area.is_in_group("Projectiles"):
		Global.score += 100
		print(Global.score)
		queue_free()
	else:
		queue_free()


func _on_hit_box_3_area_entered(_area: Area3D) -> void:
	print ("Paint 3")
	if _area.is_in_group("Projectiles"):
		Global.score += 100
		print(Global.score)
		queue_free()
	else:
		queue_free()


func _on_hit_box_4_area_entered(_area: Area3D) -> void:
	print ("Paint 4")
	if _area.is_in_group("Projectiles"):
		Global.score += 100
		print(Global.score)
		queue_free()
	else:
		queue_free()
