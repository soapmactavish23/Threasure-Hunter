extends CanvasLayer

#Variáveis
var moedas 
var vidas 
var chaves 
var baus 
var musica_ligada = true
var som_ligado = true

func _ready():
	add_to_group("hud")
	moedas = 0
	vidas = 3
	baus = 0
	chaves = 0
	pauseDesativado()
	update_hud(1)

func _process(delta):
	if vidas <= 0:
		vidas = 0
		get_tree().call_group("player","game_over")
	
	if chaves <= 0:
		chaves = 0
	
	if chaves > 0:
		get_tree().call_group("bau", "dar_chave")
	else:
		get_tree().call_group("bau", "tirar_chave")
	
#Quando pressionar o Botão de Pauser
func _on_btnPause_pressed():
	$ColorRect/click.play()
	yield($ColorRect/click, "finished")
	pauseAtivo()

#Ativar o Pause
func pauseAtivo():
	$ColorRect.show()
	get_tree().paused = true

#Desativar o Pause
func pauseDesativado():
	$ColorRect.hide()
	get_tree().paused = false

#Quando pressionar o Botão de Sair
func _on_btnSair_pressed():
	get_tree().quit()

#Quando pressionar o Botão de Menu
func _on_btnMenu_pressed():
	get_tree().paused = false
	$ColorRect/click.play()
	yield($ColorRect/click, "finished")
	get_tree().change_scene("res://Scenes/Menu.tscn")
	
#Quando pressionar o Botão de Som
func _on_btnSound_pressed():
	if musica_ligada == true:
		musica_ligada = false
		get_tree().call_group("player", "parar_som")
		$ColorRect/btnSound/anim.play("off")
	else:
		musica_ligada = true
		get_tree().call_group("player", "tocar_som")
		$ColorRect/btnSound/anim.play("on")

#Quando Precionar o botão de música
func _on_btnMusic_pressed():
	if som_ligado == true:
		som_ligado = false
		get_tree().call_group("player", "parar_musica")
		$ColorRect/btnMusic/anim.play("off")
	else:
		som_ligado = true
		get_tree().call_group("player", "tocar_musica")
		$ColorRect/btnMusic/anim.play("on")

#Quando pressionar o Botão de Jogar
func _on_btnjogar_pressed():
	$ColorRect/click.play()
	pauseDesativado()

func _on_btnReset_pressed():
	get_tree().reload_current_scene()

#Atualizar
func update_hud(item):
	var vidas_hud = "x"+str(vidas)
	var moedas_hud = "x"+str(moedas)
	var chaves_hud = "x"+str(chaves)
	var baus_hud = "x"+str(baus)
	if item == 1:
		$contador_vidas/txtVidas.text = vidas_hud
		$contador_vidas/txtVidasFundo.text = vidas_hud
	elif item == 2:
		$contador_moedas/txtMoedas.text = moedas_hud
		$contador_moedas/txtMoedasFundo.text = moedas_hud
	elif item == 3:
		$contador_chaves_ouro/txtChaves.text = chaves_hud
		$contador_chaves_ouro/txtChavesFundo.text = chaves_hud
	elif item == 4:
		$contador_bau/txtBaus.text = baus_hud
		$contador_bau/txtBausFundo.text = baus_hud

#Adcionar Vidas
func add_vidas():
	vidas += 1
	update_hud(1)
	
#Deletar Vidas
func del_vidas():
	vidas -= 1
	update_hud(1)

#Adicionar moedas
func add_moedas():
	moedas += 1
	update_hud(2)

#Deletar Chaves
func del_chaves():
	chaves -= 1
	update_hud(3)
	add_baus()

#Adcionar Chaves
func add_chaves():
	chaves += 1
	update_hud(3)

#Adcionar Baus
func add_baus():
	baus += 1
	update_hud(4)