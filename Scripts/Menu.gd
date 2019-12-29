extends "res://Scripts/Game.gd"

func _ready():
	pass

func _process(delta):
	pass

#Jogar
func _on_btnjogar_pressed():
	mudaCena(scenes[1])

#Ir para as opções
func _on_btnOpt_pressed():
	print("pressionou botão opções")

#Sair do Jogo
func _on_btnSair_pressed():
	get_tree().quit()