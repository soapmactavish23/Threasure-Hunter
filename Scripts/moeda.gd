extends Area2D

func _ready():
	pass

func _on_moeda_body_entered(body):
	print("mais uma moeda")
	queue_free()
