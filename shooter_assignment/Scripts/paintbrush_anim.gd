extends AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	speed_scale = 0.5

func _process(_delta: float) -> void:
	if (Input.is_action_just_pressed("shoot")):
		play("PaintbrushClick")
