extends KinematicBody2D

const UP = Vector2(0,-1)
const GRAVITY = 20
const SPEED = 200
const JUMP_HEIGHT = -550
var motion = Vector2()

func _ready():
	pass

func _physics_process(delta):
	#acionar gravidade
	motion.y += GRAVITY
	
	#variáveis de Input
	var left = Input.is_action_pressed("ui_left")
	var right = Input. is_action_pressed("ui_right")
	var jump = Input. is_action_just_pressed("ui_accept")
	
	#checar movimentos
	if right :
		motion.x = SPEED 
		$anim.flip_h = false
		if is_on_floor():
			$anim.play("walk")
		
	elif left :
		motion.x = -SPEED
		$anim.flip_h = true
		if is_on_floor():
			$anim.play("walk")
	elif is_on_floor():
		motion.x = 0
		$anim.play("idle")
		
		
	if is_on_floor():
		if jump :
			motion.y = JUMP_HEIGHT
			$anim.play("jump")
			
	#acionando fisica
	motion = move_and_slide(motion,UP)