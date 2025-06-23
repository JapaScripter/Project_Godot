extends CharacterBody2D

const SPEED = 300.0
var dir_option = [-1,1]
var dir

func _ready():
	randomize()
	dir = dir_option[randi_range(0,1)]
	print(dir)

func _process(delta):	
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	if $RayCast2D.is_colliding():
		print("Colidindo")
	else:
		if dir == -1:
			dir = 1
		else:
			dir = -1
		
	if dir == -1:
		$AnimatedSprite.scale.x = 1
		$corpo/CollisionShape2.position.x = -61
		$RayCast2D.position.x = -200
	elif dir == 1:
		$AnimatedSprite.scale.x = -1
		$corpo/CollisionShape2.position.x = 61
		$RayCast2D.position.x = 200

	var direction = dir
	if direction:
		velocity.x = direction * SPEED
		$AnimatedSprite.play("walk")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
