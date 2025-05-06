extends CharacterBody3D

const SPEED = 7.5
const JUMP_VELOCITY = 4.5


var paintBullet = load("res://Scenes/paint.tscn")
var instance
@onready var pos = $paintSpawn
@onready var anim = $"../CanvasLayer/PaintbrushAnim"

func _physics_process(delta: float) -> void:
	
	$"../CanvasLayer/Label".text = "Health: " + str(Global.health)
	$"../CanvasLayer/ScoreLabel".text = "Score: " + str(Global.score)
	$"../CanvasLayer/LevelLabel".text = "Level " + str(Global.currentLevel)
	
	##SHOOTING
	if Input.is_action_just_pressed("shoot"):
		instance = paintBullet.instantiate()
		instance.position = pos.global_position
		instance.transform.basis = pos.global_transform.basis
		get_parent().add_child(instance)
		$PaintSplatAudio.playing = true
		
	
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("left", "right", "ui_up", "ui_down")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()


func _on_player_hit_box_area_entered(_area: Area3D) -> void:
	print ("OUCH")
	Global.health -= 1
	print (Global.health)
	$OWAudio.playing = true
	
	if Global.health <= 0:
		get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
