extends "res://Scripts/Game.gd"

func _ready():
	add_to_group("scenes")
	$portal.collision_layer = 0
	$portal.collision_mask = 0

#Morte pela agua
func _on_agua_body_entered(body):
	get_tree().call_group("player","game_over")

#Alvanca
func acao_alavanca():
	$portal.show()
	$portal/anim.play("aberto")
	$portal.collision_layer = 1
	$portal.collision_mask = 1

#Passando de Fase
func _on_portal_body_entered(body):
	mudaCena(scenes[5])
	
func _on_audio_jungle_finished():
	$player/audio_jungle.play()

func parar_som():
	$player/audio_jungle.stop()

func tocar_som():
	$player/audio_jungle.play()
	
func parar_musica():
	$player/audio.stop()
	
func tocar_musica():
	$player/audio.play()

func tocar_loop():
	$player/audio.play()