extends CanvasLayer

func _ready():
	pauseDesativado()

func pauseAtivo():
	$ColorRect.show()
	#get_tree().call_group("scenes","jogo_pausado")
	get_tree().paused = true
	
func pauseDesativado():
	$ColorRect.hide()
	get_tree().paused = false

func _on_btnjogar_pressed():
	$ColorRect/click.play()
	pauseDesativado()
