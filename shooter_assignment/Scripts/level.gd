extends Node3D

@export var modules: Array[PackedScene] = []

var amount = 10
var rng = RandomNumberGenerator.new()
var offset = 12

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"../CharacterBody3D/MusicAudio".playing = true
	for n in amount:
		SpawnModule(n * offset)


func SpawnModule(n):
	rng.randomize()
	var num = rng.randi_range(0, modules.size()-1)
	var instance = modules[num].instantiate()
	instance.position.z = -n
	add_child(instance)
