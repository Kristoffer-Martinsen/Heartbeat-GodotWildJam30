extends Node

signal death

export var max_health: int = 0
onready var health: int = max_health setget set_health


func set_health(damage) -> void:
	health -= damage
	if health <= 0:
		emit_signal("death")

func _on_Hurtbox_area_entered(area):
	set_health(1)
	pass # Replace with function body.

