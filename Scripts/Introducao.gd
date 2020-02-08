extends "res://Scripts/Game.gd"

func _ready():
	pass
	
func _process(delta):
	if $txt_intro1.position.y < -1200:
		mudaCena(scenes[2])
	
func _physics_process(delta):
	$txt_intro1.translate(Vector2(0, -50) * delta)
	

func _on_btnSkip_pressed():
	$click.play()
	yield($click, "finished")
	mudaCena(scenes[2])
	

func _on_som_aviao_finished():
	$som_aviao.play()
