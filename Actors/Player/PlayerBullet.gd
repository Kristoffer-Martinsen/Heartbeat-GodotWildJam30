extends KinematicBody2D

var speed: float = 2
var velocity: Vector2 = Vector2()

func _physics_process(delta):
	velocity = move_and_slide(velocity * speed)

