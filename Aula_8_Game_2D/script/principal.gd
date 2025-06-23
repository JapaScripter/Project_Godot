extends Node

var score = 0
var life = 3

func remove_life():
	life -= 1

func add_score(valor_item):
	score += valor_item

func reset_game():
	life = 3
	score = 0
	get_tree().change_scene_to_file("res://scene/principal.tscn")
