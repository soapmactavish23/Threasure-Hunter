extends KinematicBody2D

const UP = Vector2(0,-1)
const GRAVITY = 20
const SPEED = 200
const JUMP_HEIGHT = -550
var motion = Vector2()
var vivo = true
var jump_button
var left
var right
var jump

func _ready():
	add_to_group("player")

func _physics_process(delta):
	#acionar gravidade
	motion.y += GRAVITY
	
	#variáveis de Input
	left = Input.is_action_pressed("ui_left")
	right = Input. is_action_pressed("ui_right")
	jump = Input. is_action_just_pressed("ui_accept")
	
	#checar movimentos
	if right and vivo:
		motion.x = SPEED 
		$anim.flip_h = false
		if is_on_floor():
			$anim.play("walk")
			#$Touch/btn_right/right.play("down")
			
	elif left and vivo:
		motion.x = -SPEED
		$anim.flip_h = true
		if is_on_floor():
			$anim.play("walk")
			#$Touch/btn_left/left.play("down")
			
	elif is_on_floor() and vivo:
		motion.x = 0
		$anim.play("idle")
		#$Touch/btn_left/left.play("up")
		#$Touch/btn_right/right.play("up")
		#$Touch/btn_jump/jump.play("up")
	
	if is_on_floor() and vivo:
		if jump:
			motion.y = JUMP_HEIGHT
			$anim.play("jump")
			$pulo.play()
			#$Touch/btn_jump/jump.play("down")
			
	#acionando fisica
	motion = move_and_slide(motion,UP)
	
#Morte
func game_over():
	vivo = false
	$anim.play("dead")
	yield($anim, "animation_finished")
	get_tree().reload_current_scene()
	
func _on_audio_finished():
	get_tree().call_group("scenes", "tocar_loop")
	
func hurt():
	$dead.play()

#Quando Não precionou o jump
#func _on_btn_jump_button_up():
#	jump = false

#Quando anda
#func _on_btn_left_button_down():
#	left = true

#func _on_btn_left_button_up():
#	left = false

#func _on_btn_right_button_down():
#	right = true

#func _on_btn_right_button_up():
#	right = false
