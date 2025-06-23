extends Area2D

func _on_body_entered(body):
	if Principal.life > 1:
		Principal.remove_life()
		get_tree().reload_current_scene()
	else:
		Principal.remove_life()
		get_tree().change_scene_to_file("res://scene/color_rect.tscn")
