extends "res://Scripts/Game.gd"

var som_ligado = true

func _ready():
	pass


#Jogar
func _on_btnjogar_pressed():
	$click.play()
	yield($click, "finished")
	mudaCena(scenes[1])

#Sair do Jogo
func _on_btnSair_pressed():
	$click.play()
	yield($click, "finished")
	get_tree().quit()

#Ligando e Desligando o Som
func _on_btnSound_pressed():
	$click.play()
	if som_ligado:
		$player_plane/AudioStreamPlayer2D.stop()
		$btnSound/anim.play("off")
		som_ligado = false
	else:
		$player_plane/AudioStreamPlayer2D.play()
		$btnSound/anim.play("on")
		som_ligado = true

func _on_btnMusic_pressed():
	$click.play()
	if som_ligado:
		$audio.stop()
		$btnMusic/anim.play("off")
		som_ligado = false
	else:
		$audio.play()
		$btnMusic/anim.play("on")
		som_ligado = true
