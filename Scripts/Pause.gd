extends CanvasLayer

func _ready():
	pauseDesativado()

func pauseAtivo():
	$ColorRect.show()

func pauseDesativado():
	$ColorRect.hide()

func _on_btnjogar_pressed():
	$ColorRect/click.play()
	pauseDesativado()
