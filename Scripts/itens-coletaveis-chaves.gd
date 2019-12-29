extends Area2D

var key_ouro = preload("res://Sprites/Tileset/Templo/Itens/key-gold.png")
var key_prata = preload("res://Sprites/Tileset/Templo/Itens/key-silver.png")
export var n_item = [0,1]

var sprites = [
	key_ouro,
	key_prata,
]

func _ready():
	
	$Sprite.set_texture(sprites[n_item])

func _on_itenscoletaveischaves_body_entered(body):
	queue_free()
