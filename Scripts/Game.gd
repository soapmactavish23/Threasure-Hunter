extends Node2D

#Vetor de Cenas
var scenes = [
	"res://Scenes/Menu.tscn", 
	"res://Scenes/Introducao.tscn",
	"res://Scenes/tutorial.tscn",
	"res://Scenes/Fase1.tscn",
	"res://Scenes/Fase2.tscn",
	"res://Scenes/Carregando.tscn",
	"res://Scenes/Carregando2.tscn",
	"res://Scenes/Fase3.tscn",
	"res://Scenes/Ending.tscn",
	"res://Scenes/Carregando3.tscn",
	]

func _ready():
	pass

func _process(delta):
	pass

#Mudar a cena
func mudaCena(cenas):
	get_tree().change_scene(cenas)

func sair():
	get_tree().quit()

