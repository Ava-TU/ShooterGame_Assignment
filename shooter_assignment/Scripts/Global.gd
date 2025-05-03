extends Node3D

var health = 3
var score = 0
var currentLevel = 1
var nextTarget = 500
var canvasSpeed = 3

func _process(_delta: float) -> void:
	
	if score == nextTarget:
		currentLevel += 1
		nextTarget += 500
		canvasSpeed += 1
		print (nextTarget)
