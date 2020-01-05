extends "res://Scripts/Game.gd"

var som_ligado = true

func _ready():
	pass

#Jogar
func _on_btnjogar_pressed():
	$player_plane/click.play()
	yield($player_plane/click, "finished")
	mudaCena(scenes[1])

#Sair do Jogo
func _on_btnSair_pressed():
	$player_plane/click.play()
	yield($player_plane/click, "finished")
	sair()

#Ligando e Desligando o Som
func _on_btnSound_pressed():
	$player_plane/click.play()
	if som_ligado:
		som_ligado = false
		$player_plane/som_aviao.stop()
		$Hud/btnSound/anim.play("off")
	else:
		som_ligado = true
		$player_plane/som_aviao.play()
		$Hud/btnSound/anim.play("on")
		

func _on_btnMusic_pressed():
	$player_plane/click.play()
	if som_ligado:
		$player_plane/audio.stop()
		$Hud/btnMusic/anim.play("off")
		som_ligado = false
	else:
		$player_plane/audio.play()
		$Hud/btnMusic/anim.play("on")
		som_ligado = true

#Quando a música acabar
func _on_audio_finished():
	$player_plane/audio.play()


func _on_som_aviao_finished():
	$player_plane/som_aviao.play()