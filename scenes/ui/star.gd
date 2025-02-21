@tool
extends Sprite2D

@export var is_on: bool = false:
	set(value):
		is_on = value
		if is_node_ready():
			update_sprite()

func _ready():
	update_sprite()

func update_sprite():
	if is_on:
		texture = preload("res://assets/full_star.png")
	else:
		texture = preload("res://assets/empty_star.png")
