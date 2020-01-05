extends KinematicBody2D

const UP = Vector2(0,-1)
const GRAVITY = 20
const SPEED = 200
const JUMP_HEIGHT = -550
var motion = Vector2()
var vivo = true


func _ready():
	add_to_group("player")

func _physics_process(delta):
	#acionar gravidade
	motion.y += GRAVITY
	
	#variáveis de Input
	var left = Input.is_action_pressed("ui_left")
	var right = Input. is_action_pressed("ui_right")
	var jump = Input. is_action_just_pressed("ui_accept")
	
	#checar movimentos
	if right and vivo:
		motion.x = SPEED 
		$anim.flip_h = false
		if is_on_floor():
			$anim.play("walk")
			
		
	elif left and vivo:
		motion.x = -SPEED
		$anim.flip_h = true
		if is_on_floor():
			$anim.play("walk")
		
	elif is_on_floor() and vivo:
		motion.x = 0
		$anim.play("idle")
		
		
	if is_on_floor() and vivo:
		if jump :
			motion.y = JUMP_HEIGHT
			$anim.play("jump")
			$pulo.play()
			
	#acionando fisica
	motion = move_and_slide(motion,UP)
	
#Morte
func game_over():
	vivo = false
	$anim.play("dead")
	yield($anim, "animation_finished")
	get_tree().reload_current_scene()
	
func parar_som():
	$audio_jungle.stop()

func tocar_som():
	$audio_jungle.play()
	
func parar_musica():
	$audio.stop()
	
func tocar_musica():
	$audio.play()

func _on_audio_finished():
	$audio.play()