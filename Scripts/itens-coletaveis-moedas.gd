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
	var n_item = rand_range(0,2)
	$Sprite.set_texture(sprites[n_item])

func _on_itenscoletaveismoedas_body_entered(body):
	queue_free()
