extends Area2D

var colidiu_alavanca = false

func _process(delta):
	if Input.is_action_just_pressed("action") and colidiu_alavanca:
		$anim.play("default")
		acionar()
		
func acionar():
	get_tree().call_group("scenes" , "acao_alavanca")

func _on_alavanca_body_entered(body):
	colidiu_alavanca = true

func _on_alavanca_body_exited(body):
	colidiu_alavanca = false