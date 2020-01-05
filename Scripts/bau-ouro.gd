extends Area2D

var moeda = preload("res://probs/Itens/itens-coletaveis-moedas.tscn")
var frutas = preload("res://probs/Itens/itens-coletaveis-frutas.tscn")
var colidiu = false
var tem_chave = false
func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("action") and colidiu and tem_chave:
		$anim.play("aberto")
		get_tree().call_group("scenes", "acao_bau")
		for i in range(10):
			recompensar()
		for i in range(3):
			recompensar_frutas()
func recompensar():
	var m = moeda.instance()
	get_parent().add_child(m)
	m.position.x = position.x
	m.position.y = position.y
	
func recompensar_frutas():
	var f = frutas.instance()
	get_parent().add_child(f)
	f.position.x = position.x
	f.position.y = position.y