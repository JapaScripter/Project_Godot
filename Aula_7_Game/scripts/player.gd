extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -550.0


func _process(delta):
	if not is_on_floor():
		velocity += get_gravity() * delta

	if Input.is_action_just_pressed("jump_up") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("walk_left", "walk_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if direction == -1:
		$Animated.flip_h = false
		$Animated.play("runnig")
	elif direction == 1:
		$Animated.flip_h = true
		$Animated.play("runnig")
	elif direction == 0:
		$Animated.play("idle")

	move_and_slide()
