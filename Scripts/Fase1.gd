extends "res://Scripts/Game.gd"

func _ready():
	add_to_group("scenes")
	$portal.collision_layer = 0
	$portal.collision_mask = 0
	

func _process(delta):
	if $HUD.baus == 3:
		$portal/anim.play("aberto")
		$portal.collision_layer = 1
		$portal.collision_mask = 1

func acao_alavanca():
	$Armadilhas.queue_free()

func _on_portal_body_entered(body):
	mudaCena(scenes[4])