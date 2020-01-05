extends Area2D

var maca = preload("res://Sprites/Tileset/Templo/Itens/aple.png")
var frango = preload("res://Sprites/Tileset/Templo/Itens/chicken-thigh.png")
var melancia = preload("res://Sprites/Tileset/Templo/Itens/melancia.png")
var laranja = preload("res://Sprites/Tileset/Templo/Itens/orange.png")

var sprites = [
	maca,
	frango,
	melancia,
	laranja,
]

func _ready():
	var n_item = rand_range(0,3)
	$Sprite.set_texture(sprites[n_item])

func _on_itenscoletaveisfrutas_body_entered(body):
	$particles.emitting = true
	$queue_timer.start(1)
	$Sprite.hide()
	get_tree().call_group("hud", "add_vidas")

func _on_queue_timer_timeout():
	queue_free()
