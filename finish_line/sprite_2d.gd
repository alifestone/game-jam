extends Node2D

@onready var button = $Touch
var count = 0
 
func _process(delta):
	if count == 1:
		button.visible = false
	elif Input.is_action_pressed("final"):
		count += 1
		get_tree().change_scene_to_file("res://scenes/game.tscn")
