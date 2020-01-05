extends "res://Scripts/Game.gd"

func _ready():
	print("é essa")
	
func _on_Timer_timeout():
	$victory.queue_free()
	mudaCena(scenes[0])
