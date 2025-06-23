extends CharacterBody2D

func _process(delta):
	const SPEED = 500.0
	const JUMP_VELOCITY = -1000.0
	
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	if Input.is_action_just_pressed("jump_up") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("walk_left", "walk_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if direction == -1 and is_on_floor():
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("running")
	elif direction == 1 and is_on_floor():
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("running")
	elif Input.is_action_pressed("jump_up") and !is_on_floor():
		if direction == -1:
			$AnimatedSprite.flip_h = false
			$AnimatedSprite.play("jump")
		elif direction == 1:
			$AnimatedSprite.flip_h = true
			$AnimatedSprite.play("jump")
	elif direction == 0 and is_on_floor():
		$AnimatedSprite.play("idle")
	elif Input.is_action_pressed("hit_hit"):
		$AnimatedSprite.play("hit")

	if $RayCast2D.is_colliding():
		jump()

	move_and_slide()

func _on_animated_sprite_animation_finished():
	if $AnimatedSprite.animation == "jump":
		$AnimatedSprite.play("jump2")

func jump():
	const JUMP_VELOCITY = -1000.0
	velocity.y = JUMP_VELOCITY
