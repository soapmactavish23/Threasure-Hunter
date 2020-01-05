extends CanvasLayer

#Variáveis
var moedas = 0
var vidas = 3
var chaves = 0
var baus = 0
var ligado = true

func _ready():
	add_to_group("moedas")
	add_to_group("vidas")
	add_to_group("chaves")
	pauseDesativado()
	update_hud_vidas()
	update_hud_moedas()

func _process(delta):
	if vidas <= 0:
		vidas = 0
		get_tree().call_group("player","game_over")
	
	if chaves <= 0:
		chaves = 0
	
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
	if ligado == true:
		ligado = false
		get_tree().call_group("player", "parar_musica")
		$ColorRect/btnSound/anim.play("off")
	else:
		ligado = true
		get_tree().call_group("player", "tocar_musica")
		$ColorRect/btnSound/anim.play("on")

#Quando pressionar o Botão de Jogar
func _on_btnjogar_pressed():
	$ColorRect/click.play()
	pauseDesativado()

#Adcionar Vidas
func add_vidas():
	vidas += 1
	update_hud_vidas()

#Deletar Vidas
func del_vidas():
	vidas -= 1
	update_hud_vidas()

#Mostrar Vidas
func update_hud_vidas():
	var vidas_hud = "x"+str(vidas)
	$contador_vidas/txtVidas.text = vidas_hud
	$contador_vidas/txtVidasFundo.text = vidas_hud
	
#Adicionar moedas
func add_moedas():
	moedas += 1
	update_hud_moedas()
	
func update_hud_moedas():
	var moedas_hud = "x"+str(moedas)
	$contador_moedas/txtMoedas.text = moedas_hud
	$contador_moedas/txtMoedasFundo.text = moedas_hud
	
#Adcionar Chaves
func add_chaves():
	chaves += 1
	update_hud_chaves()
	
func update_hud_chaves():
	var chaves_hud = "x"+str(chaves)
	$contador_chaves_ouro/txtChaves.text = chaves_hud
	$contador_chaves_ouro/txtChavesFundo.text = chaves_hud
	
#Adcionar Baus
func add_baus():
	baus += 1
	update_hud_baus()

func update_hud_baus():
	var baus_hud = "x"+str(baus)
	$contador_bau/txtBaus.text = baus_hud
	$contador_bau/txtBausFundo.text = baus_hud
	
	


