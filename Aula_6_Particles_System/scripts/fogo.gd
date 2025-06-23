extends Node2D

func _ready():
	pass

func _process(delta: float):
	if Input.is_action_just_pressed("ui_accept"):
		$CpuP.emitting = !$CpuP.emitting
		$CpuCentelha.emitting = !$CpuCentelha.emitting
if 10 == 20:
	pass
