extends Area2D

var key_ouro = preload("res://Sprites/Tileset/Templo/Itens/key-gold.png")


func _ready():
	$Sprite.set_texture(key_ouro)

func _on_itenscoletaveischaves_body_entered(body):
	$moedas_som.play()
	collision_mask = 0
	collision_layer = 0
	$particles.emitting = true
	$queue_timer.start(1)
	$Sprite.hide()
	get_tree().call_group("hud", "add_chaves")

func _on_queue_timer_timeout():
	queue_free()
