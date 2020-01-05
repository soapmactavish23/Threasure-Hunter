extends Area2D

var colidiu = false
export var msg = 0
var mensagem = [
		"Pressione as Setas para andar", 
		"Pressione espaço para pular",
		"Pressione 'E' para interagir",
		"Para passar de fase abra todos os Baús"
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
	
func desinformar():
	$ColorRect.hide()

func _on_placa_info_body_entered(body):
	informar(msg)

func _on_placa_info_body_exited(body):
	desinformar()
