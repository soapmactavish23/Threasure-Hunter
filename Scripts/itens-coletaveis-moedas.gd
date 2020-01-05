extends Area2D

var moeda_ouro = preload("res://Sprites/Tileset/Templo/Itens/gold-coin.png")
var moeda_prata = preload("res://Sprites/Tileset/Templo/Itens/silver-coin.png")
var moeda_bronze = preload("res://Sprites/Tileset/Templo/Itens/tanned-coin.png")

var sprites = [
	moeda_ouro,
	moeda_prata,
	moeda_bronze,
]

func _ready():
	#var n_item = rand_range(0,2)
	$Sprite.set_texture(moeda_ouro)

func _on_itenscoletaveismoedas_body_entered(body):
	$moedas_som.play()
	$particles.emitting = true
	$queue_timer.start(1)
	$Sprite.hide()
	get_tree().call_group("hud", "add_moedas")

func _on_queue_timer_timeout():
	queue_free()
