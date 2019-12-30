extends CanvasLayer

func _ready():
	pauseDesativado()

func pauseAtivo():
	$ColorRect.show()
	get_tree().call_group("scenes","jogo_pausado")

func pauseDesativado():
	$ColorRect.hide()

func _on_btnjogar_pressed():
	$ColorRect/click.play()
	pauseDesativado()
