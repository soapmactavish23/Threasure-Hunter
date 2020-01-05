extends Area2D

func _ready():
	pass

func causar_dano():
	get_tree().call_group("hud", "del_vidas")
	
func _on_leftthorns_body_entered(body):
	causar_dano()

func _on_lowthorns_body_entered(body):
	causar_dano()

func _on_rightthorns_body_entered(body):
	causar_dano()

func _on_stonewiththorns_body_entered(body):
	causar_dano()

func _on_thornyplantdown_body_entered(body):
	causar_dano()

func _on_thornyplantup_body_entered(body):
	causar_dano()
