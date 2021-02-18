extends Node2D

export var bullet_scene: PackedScene
export var bullet_amount: int = 1
onready var heartbeat_timer: Timer = get_parent()


func _on_Heartbeat_timeout() -> void:
	heartbeat_timer.start(Global.bpm)
	print("heart beat")

	shoot(bullet_amount)
	pass # Replace with function body.

func shoot(number_of_bullets: int) -> void:
	for b in number_of_bullets:
		_instanciate_bullet()

func _instanciate_bullet() -> void:
	var bullet := bullet_scene.instance()
	bullet.position = owner.position
	bullet.velocity = _get_shoot_direction()
	owner.get_parent().add_child(bullet)

func _get_shoot_direction() -> Vector2:
	return get_global_mouse_position().normalized()
