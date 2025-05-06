extends Node2D

@onready var button = $button/Touch
#@onready var c = get_node("/root/config")
 
func _process(delta: float) -> void:
	if Input.is_action_pressed("final"):
		get_tree().change_scene_to_file("res://model/Mainmenu.tscn")#請填入第二關
