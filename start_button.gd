extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("Menu_Quit"):
		$ButtonClickSnd.play()
		get_tree().quit()
	if Input.is_action_pressed("Menu_Start"):
		$ButtonClickSnd.play()
		print("Game play.")
		#Call Game to Run
		get_tree().change_scene_to_file("res://scenes/game.tscn")
		
