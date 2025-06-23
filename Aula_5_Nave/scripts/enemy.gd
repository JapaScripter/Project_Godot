extends Area2D

const SPEED = 300.0

func _process(delta: float):
	position.x -= 1 * (SPEED * delta)

func _on_area_entered(area: Area2D):
	queue_free()
