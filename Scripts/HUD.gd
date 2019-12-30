extends CanvasLayer

#moedas
var moedas = 0
var vidas = 3
var chaves = 0

func _ready():
	add_to_group("moedas")
	add_to_group("vidas")
	add_to_group("chaves")
	update_hud_vidas()
	update_hud_moedas()

func _process(delta):
	if vidas >= 3:
		vidas = 3
	elif vidas <= 0:
		vidas = 0
		get_tree().call_group("player","game_over")
	
	if chaves <= 0:
		chaves = 0
	
#Adcionar Vidas
func add_vidas():
	vidas += 1
	update_hud_vidas()

#Deletar Vidas
func del_vidas():
	print(vidas)
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
	
#Chave
func add_chaves():
	print(chaves)
	chaves += 1
	update_hud_chaves()
	
func update_hud_chaves():
	var chaves_hud = "x"+str(chaves)
	$contador_chaves_ouro/txtChaves.text = chaves_hud
	$contador_chaves_ouro/txtChavesFundo.text = chaves_hud