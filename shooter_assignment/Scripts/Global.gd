extends Node3D

var health = 3
var score = 0
var currentLevel = 1
var nextTarget = 250
var canvasSpeed = 3.0

func _process(_delta: float) -> void:
	
	if score == nextTarget:
		currentLevel += 1
		nextTarget += 250
		canvasSpeed += 0.8
		print (nextTarget)
