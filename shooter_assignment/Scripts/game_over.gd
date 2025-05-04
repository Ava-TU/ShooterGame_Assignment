extends CanvasLayer

func _ready() -> void:
	if Global.score == 0:
		$Boo.playing = true
	
	$FinishedPaintings.text = "Paintings Completed: " + str(Global.score / 50)
	$FinalScore.text = "Final Score: " + str(Global.score)

func _on_play_again_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Level.tscn")
	Global.health = 3
	Global.score = 0
	Global.currentLevel = 1
	Global.nextTarget = 250
	Global.canvasSpeed = 3


func _on_quit_pressed() -> void:
	get_tree().quit()
