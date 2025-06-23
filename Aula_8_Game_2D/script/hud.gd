extends CanvasLayer

func _process(delta):
	$score.text = "Score = " + str(Principal.score)
	$life.text = "Life = " + str(Principal.life)
	#if Principal.score == 20:
		#get_tree().change_scene_to_find("res://scene/fase_2")
