extends Node3D

@onready var level = $"../"
@onready var paintingOne = preload("res://Scenes/paintingOne.tscn")

var speed = 3
var rng = RandomNumberGenerator.new()

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
	
	var hit_Change = paintingOne.instantiate()
	hit_Change.position = Vector3(global_position.x - 5, global_position.y, global_position.z)
	get_tree().root.add_child(hit_Change)
	print("OMG")
	queue_free()
	#await get_tree().create_timer(2.0).timeout
	#print("YAY")
	


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


func _on_timer_timeout() -> void:
	print ("Timer Stop")
