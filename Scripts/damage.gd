extends Area2D

var left_thorns = preload("res://Sprites/Tileset/Templo/Damage/left-thorns.png")
var low_thorns = preload("res://Sprites/Tileset/Templo/Damage/low-thorns.png")
var right_thorns = preload("res://Sprites/Tileset/Templo/Damage/right-thorns.png")
var stone_with_thorns = preload("res://Sprites/Tileset/Templo/Damage/stone-with-thorns.png")
var thorny_plant_down = preload("res://Sprites/Tileset/Templo/Damage/thorny-plant-down.png")
var thorny_plant_up = preload("res://Sprites/Tileset/Templo/Damage/thorny-plant-up.png")
var up_thorns = preload("res://Sprites/Tileset/Templo/Damage/up-thorns.png")

export var n_item = [0,1,2,3,4,5,6,7]

var sprites = [
	left_thorns,
	low_thorns,
	right_thorns,
	stone_with_thorns,
	thorny_plant_down,
	thorny_plant_up,
	up_thorns
]

func _ready():
	$Sprite.set_texture(sprites[n_item])
