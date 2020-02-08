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
		$ColorRect/setas.show()
		$ColorRect/barra.hide()
		$ColorRect/e.hide()
		$ColorRect/caverna.hide()
	elif num == 1:
		$ColorRect/txtInfo.text = mensagem[1]
		$ColorRect/setas.hide()
		$ColorRect/barra.show()
		$ColorRect/e.hide()
		$ColorRect/caverna.hide()
	elif num == 2:
		$ColorRect/txtInfo.text = mensagem[2]
		$ColorRect/setas.hide()
		$ColorRect/barra.hide()
		$ColorRect/e.show()
		$ColorRect/caverna.hide()
	elif num == 3:
		$ColorRect/txtInfo.text = mensagem[3]
		$ColorRect/setas.hide()
		$ColorRect/e.hide()
		$ColorRect/barra.hide()
		$ColorRect/caverna.show()
		
func desinformar():
	$ColorRect.hide()
	$ColorRect/setas.hide()
	$ColorRect/e.hide()
	$ColorRect/barra.hide()
	$ColorRect/caverna.hide()
	
func _on_placa_info_body_entered(body):
	informar(msg)

func _on_placa_info_body_exited(body):
	desinformar()
