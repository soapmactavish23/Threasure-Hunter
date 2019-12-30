extends Area2D

var colidiu = false

var mensagem = [
		"Precione as Setas para andar", 
		"Precione espaço para pular",
		"Precione 'E' para interagir",
		
	]

func _ready():
	$ColorRect.hide()

func informar(num):
	$ColorRect.show()
	if num == 0:
		$ColorRect/txtInfo.text = mensagem[0]
	elif num == 1:
		$ColorRect/txtInfo.text = mensagem[1]
	elif num == 2:
		$ColorRect/txtInfo.text = mensagem[2]
	elif num == 3:
		$ColorRect/txtInfo.text = mensagem[3]
	elif num == 4:
		$ColorRect/txtInfo.text = mensagem[4]
func desinformar():
	$ColorRect.hide()