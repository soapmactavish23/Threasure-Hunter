extends Area2D

var moeda = preload("res://Sprites/Tileset/Templo/Itens/gold-coin.png")
var colidiu = false
var tem_chave = false
func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("action") and colidiu and tem_chave:
		$anim.play("aberto")
		get_tree().call_group("scenes", "acao_bau")
		recompensar()
		
func recompensar():
	pass