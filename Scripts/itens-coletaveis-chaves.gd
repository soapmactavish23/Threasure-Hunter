extends Area2D

var key_ouro = preload("res://Sprites/Tileset/Templo/Itens/key-gold.png")


func _ready():
	$Sprite.set_texture(key_ouro)

func _on_itenscoletaveischaves_body_entered(body):
	$moedas_som.play()
	$particles.emitting = true
	$queue_timer.start(1)
	$Sprite.hide()
	get_tree().call_group("chaves", "add_chaves")

func _on_queue_timer_timeout():
	queue_free()
