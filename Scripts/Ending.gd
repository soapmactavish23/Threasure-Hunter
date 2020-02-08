extends "res://Scripts/Game.gd"

func _ready():
	pass

func _process(delta):
	$txt.translate(Vector2(0, -100) * delta)
	if $txt.position.y < -1000:
		mudaCena(scenes[0])