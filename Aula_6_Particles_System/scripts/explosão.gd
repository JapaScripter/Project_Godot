extends Node2D


func _ready():
	pass

func _process(delta: float):
	if Input.is_action_pressed("ui_accept"):
		$CpuP.emitting = true
