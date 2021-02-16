extends KinematicBody2D


var velocity: Vector2 = Vector2()
var speed: float = 10 * Global.units

func _physics_process(delta):
	velocity = move_and_slide(_get_input_direction() * speed)

func _get_input_direction() -> Vector2:
	var input_direction_x: float = (
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	)
	var input_direction_y: float = (
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	)
	velocity = Vector2(input_direction_x, input_direction_y)
	return velocity.normalized()
