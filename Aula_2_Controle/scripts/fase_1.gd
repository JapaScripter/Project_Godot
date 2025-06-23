extends Node2D

@onready var bola = $bola
@onready var moeda = get_node("coin")
const PRE_BOLA = preload("res://assets/scene/bola.tscn")

var time = 0
var tempo = 0

func _ready():
	bola.visible = false
	bola.gravity_scale = 0
	#moeda.position = Vector2(bola.position.x + 100,bola.position.y)
	#moeda.position.x = 10 
	#moeda.position.y = 10 
	pass

func _process(delta: float):
	time += delta
	#if time > 2 and !bola.visible:
		#bola.visible = true
		#bola.gravity_scale = 1
	#pass
#
	#moeda.position = Vector2(bola.position.x + 100, bola.position.y)
	tempo += delta
	if tempo > 0.1:
		var bola = PRE_BOLA.instantiate()
		bola.global_position = moeda.global_position
		add_child(bola)
		tempo = 0
	
