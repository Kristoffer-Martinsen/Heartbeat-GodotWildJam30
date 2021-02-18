extends KinematicBody2D

var speed: float = 16 * Global.units
var velocity: Vector2 = Vector2()

func _ready() -> void:
	velocity = velocity * speed

func _physics_process(delta):
	velocity = move_and_slide(velocity)

