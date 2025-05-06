extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	print("You Win!")  # 顯示勝利訊息
	Engine.time_scale = 0.5  # 慢動作效果
	body.get_node("CollisionShape2D").queue_free()      
	timer.start()  # 啟動計時器
	
	# 可以在這裡加入特效，例如顯示勝利動畫
	# body.get_node("VictoryEffect").show()

func _on_timer_timeout() -> void:
	print("test!")
	Engine.time_scale = 1
	get_tree().change_scene_to_file("res://scenes/ChangeScene.tscn")
