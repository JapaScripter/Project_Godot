extends Area2D

const SPEED = 500.0

func _process(delta: float):
	
	if Input.is_action_pressed("go_right") and position.x < 1100:
		position.x += 1 + (SPEED * delta)
	elif Input.is_action_pressed("go_left") and position.x > 50:
		position.x -= 1 + (SPEED * delta)
	elif Input.is_action_pressed("go_down") and position.y < 600:
		position.y += 1 + (SPEED * delta)
	elif Input.is_action_pressed("go_up") and position.y > 50:
		position.y -= 1 + (SPEED * delta)

func _on_area_entered(area: Area2D):
	get_tree().reload_current_scene()
