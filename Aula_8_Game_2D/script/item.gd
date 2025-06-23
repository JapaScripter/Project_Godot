extends Area2D

var valor = 10
const PRE_PARTICLES = preload("res://scene/cpu_particles.tscn")

func _ready():
	self.body_entered.connect(_on_body_entered)
	pass

func _on_body_entered(body):
	explosion()
	Principal.add_score(valor)
	queue_free()
	pass

func explosion():
	var particle = PRE_PARTICLES.instantiate()
	particle.global_position = self.global_position
	get_parent().add_child(particle)
	particle.emitting = true
