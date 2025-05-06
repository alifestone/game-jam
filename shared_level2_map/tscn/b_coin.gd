extends Area2D

@onready var level2_manager: Node = $"../level2_manager"

func _on_body_entered(body: Node2D) -> void:
	level2_manager.add_point()
	queue_free()
