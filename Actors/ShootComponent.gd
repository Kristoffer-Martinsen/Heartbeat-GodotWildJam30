extends Node

export var bullet_scene: PackedScene
onready var heartbeat_timer: Timer = get_parent()

func _on_Heartbeat_timeout() -> void:
	heartbeat_timer.start(Global.bpm)
	print("heart beat")

	shoot()
	pass # Replace with function body.

func shoot() -> void:
	_instanciate_bullet()
	pass

func _instanciate_bullet() -> void:
	var bullet := bullet_scene.instance()
	bullet.position = owner.position
	get_parent().add_child(bullet)
