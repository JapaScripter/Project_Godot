extends Node2D

var time = 0
var enemy = preload("res://scenes/enemy.tscn")

func _ready():
	pass

func _process(delta: float):
	time += 1
	while time == 30:
		dup()
		time = 0

func dup():
	var instance = enemy.instantiate()
	add_child(instance)
	instance.position = Vector2(randf_range(1200,1500), randf_range(50,600))
	
