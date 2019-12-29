extends Node2D
#Vetor de Cenas
var scenes = [
	"res://Scenes/Menu.tscn", 
	"res://Scenes/Introducao.tscn",
	"res://Scenes/tutorial.tscn"
	]

func _ready():
	pass 

func _process(delta):
	pass

#Morte
func morre():
	get_tree().reload_current_scene()

#Mudar a cena
func mudaCena(cenas):
	get_tree().change_scene(cenas)

#Ativar Alavanca
func _on_alavanca_body_entered(body):
	if body == $player:
		$alavanca.colidiu_alavanca = true

