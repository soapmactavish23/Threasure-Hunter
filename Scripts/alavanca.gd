extends Area2D

var colidiu_alavanca = false

func _process(delta):
	if Input.is_action_just_pressed("action") and colidiu_alavanca:
		$anim.play("default")